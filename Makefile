venv:
	test -d venv || virtualenv venv -p python3
	ln -sf ./venv/bin/python

test: venv
	./python setup.py install
	./python -c "from flask_wings import __version__; print('Installed Python-Wings version {}'.format(__version__))"
	./python setup.py test

dist: clean venv
	./python setup.py sdist bdist_wheel

testpypi: dist
	./venv/bin/pip install twine
	#./venv/bin/twine upload --repository-url https://test.pypi.org/legacy/ dist/*
	./venv/bin/twine upload --repository testpypi dist/*

pypi: dist
	./venv/bin/pip install twine
	./venv/bin/twine upload dist/*

clean:
	rm -rf \
	.eggs/ \
	.pytest_cache/ \
	Flask_Wings.egg-info/ \
	build/ \
	dist/ \
	flask_wings/__pycache__/ \
	python \
	tests/__pycache__/ \
	venv/
