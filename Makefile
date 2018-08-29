venv: requirements.txt
	test -d venv || virtualenv venv -p python3
	venv/bin/pip install -r requirements.txt
	ln -sf venv/bin/python

clean:
	rm -rf __pycache__ python venv
