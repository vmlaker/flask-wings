venv:
	test -d venv || virtualenv venv -p python3
	ln -sf ./venv/bin/python
	./python setup.py install
	./python -c "from flask_wings import __version__; print('Installed Python-Wings version {}'.format(__version__))"

test: venv
	./python setup.py test

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
