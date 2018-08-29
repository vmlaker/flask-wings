venv:
	test -d venv || virtualenv venv -p python3
	ln -sf ./venv/bin/python
	./venv/bin/pip install .
	./python -c "from flask_wings import __version__; print('Installed Python-Wings version {}'.format(__version__))"
clean:
	rm -rf __pycache__ build dist python venv
