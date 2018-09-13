===========
Flask-Wings
===========

.. image:: https://img.shields.io/pypi/v/flask-wings.svg
    :target: https://pypi.python.org/pypi/flask-wings

.. image:: https://img.shields.io/travis/vmlaker/flask-wings.svg
   :target: https://travis-ci.org/vmlaker/flask-wings

.. image:: https://img.shields.io/coveralls/vmlaker/flask-wings.svg
   :target: https://coveralls.io/r/vmlaker/flask-wings

.. image:: https://img.shields.io/github/license/vmlaker/flask-wings.svg
    :target: https://github.com/vmlaker/flask-wings/blob/master/LICENSE

Flask-Wings is a boilerplate for writing
`Flask <http://flask.pocoo.org>`_ extensions.
Itself it is a tiny Flask extension that just adds some views and templates
to the parent app. Take a look at ``tests/app.py`` for a usage example.

Use Flask-Wings as a starting point for creating your own Flask extensions.
The source code is minimalistic but strives to agree with
`standard practices <http://flask.pocoo.org/docs/extensiondev>`_.
Included are minimum frameworks that make the extension
a fully-fledged distributable Python package:

* tests directory with a minimal set of tests
* integration with
  `Travis CI <https://travis-ci.org/vmlaker/flask-wings>`_ and
  `Coveralls <https://coveralls.io/github/vmlaker/flask-wings>`_
* setuptools config
* docs build using Sphinx
* deployment to `PyPI <https://pypi.org/project/Flask-Wings>`_ and
  `GitHub Pages <https://vmlaker.github.io/flask-wings>`_ with make commands
* etc.

Start by creating you own repo. Then pull Flask-Wings into it.
::

   mkdir my-cool-extension
   cd my-cool-extension
   git init
   git remote add flask-wings https://github.com/vmlaker/flask-wings
   git pull flask-wings master

Now start coding! Check out the makefile to see a micro develpment cycle.
