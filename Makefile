.PHONY: docs

venv: requirements.txt
	test -d venv || virtualenv venv -p python3
	./venv/bin/pip install -r requirements.txt
	ln -sf ./venv/bin/python

test: venv
	./python setup.py install
	./python -c "from flask_wings import __version__; print('Installed Python-Wings version {}'.format(__version__))"
	./python setup.py test

coverage: test
	./venv/bin/coverage run --source tests tests/test_*.py
	./venv/bin/coverage report

dist: clean venv
	./python setup.py sdist bdist_wheel

testpypi: dist
	#./venv/bin/twine upload --repository-url https://test.pypi.org/legacy/ dist/*
	./venv/bin/twine upload --repository testpypi dist/*

pypi: dist
	./venv/bin/twine upload dist/*

docs: venv
	./python setup.py install
	./venv/bin/sphinx-quickstart docs \
	  --quiet \
	  --project='Flask-Wings' \
	  --author='Velimir Mlaker' \
	  -v `./python -c 'import flask_wings; print(flask_wings.__version__)'` \
	  --dot=_ \
	  --ext-autodoc \
	  --ext-viewcode \
	  --extensions=pallets_sphinx_themes \
	  -d html_theme='flask' \
	  --makefile \
	  --no-batchfile
	sed -i s:'html_theme = ':"html_theme = 'flask' # ":g docs/conf.py
	./venv/bin/sphinx-apidoc -o docs flask_wings
	./venv/bin/sphinx-build -b html docs/ docs/_build/html/

init-gh-pages: docs
	rm -rf html docs/_build/html
	ln -sf ../../html docs/_build/html
	git clone git@github.com:vmlaker/flask-wings.git html
	cd html && \
	git branch gh-pages && \
	git checkout gh-pages && \
	git symbolic-ref HEAD refs/heads/gh-pages && \
	rm .git/index && \
	git clean -fdx
	git ci -m 'First pages commit.'
	git push origin gh-pages

MASTER_VERSION = $(shell git log master -1 | head -1)

gh-pages: docs
	rm -rf html
	#git clone https://github.com/vmlaker/flask-wings.git html
	git clone git@github.com:vmlaker/flask-wings.git html
	cd html && git checkout gh-pages
	rm -rf html/*
	cp -r docs/_build/html/* html/
	cd html && touch .nojekyll
	cd html && git add .
	cd html && git commit -m 'Update gh-pages for $(MASTER_VERSION).'
	cd html && git push origin gh-pages

clean:
	rm -rf \
	.coverage \
	.eggs/ \
	.pytest_cache/ \
	Flask_Wings.egg-info/ \
	build/ \
	dist/ \
	docs/ \
	flask_wings/__pycache__/ \
	html/ \
	python \
	tests/__pycache__/ \
	venv/
