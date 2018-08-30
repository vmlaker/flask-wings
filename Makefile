venv:
	test -d venv || virtualenv venv -p python3
	ln -sf ./venv/bin/python
	./python setup.py install
	./python -c "from flask_wings import __version__; print('Installed Python-Wings version {}'.format(__version__))"

test:
	./python setup.py test

clean:
	rm -rf __pycache__
	rm -rf .eggs .pytest_cache
	rm -rf build dist python venv
	rm -rf tests/__pycache__
	rm -rf *.egg-info
