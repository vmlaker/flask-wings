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

Use Flask-Wings as a starting point for creating your own
Flask extensions as fully-fledged, distributable Python packages.

Minimalistic source code comes with a few extras you can use
to make your extension agree with
`standard practices <http://flask.pocoo.org/docs/1.0/extensiondev>`_:

* tests directory with a minimal set of tests
* `docs build <https://vmlaker.github.io/flask-wings>`_ using Sphinx
* integration with
  `Travis CI <https://travis-ci.org/vmlaker/flask-wings>`_ and
  `Coveralls <https://coveralls.io/github/vmlaker/flask-wings>`_
* setuptools config
* etc.


Developers
----------

Check out the makefile to see a micro develpment cycle.
