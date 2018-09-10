from setuptools import setup

exec(open('./flask_wings/version.py').read())

with open('README.rst') as f:
    long_description = f.read()

setup(
    name='Flask-Wings',
    version=__version__,
    url='http://github.com/vmlaker/flask-wings',
    license='MIT',
    author='Velimir Mlaker',
    author_email='vel.i.mir.mlaker@gmail.com',
    description='Boilerplate Flask extension.',
    long_description=long_description,
    packages=['flask_wings'],
    package_data={'flask_wings': ['templates/*']},
    include_package_data=True,
    platforms='any',
    zip_safe=False,
    setup_requires=[
        'pytest-runner==4.2',
    ],
    tests_require=[
        'coverage==4.5.1',
        'pydocstyle>=1.0.0',
        'pytest-cache>=1.0',
        'pytest-cov>=2.6.0',
        'pytest-pep8>=1.0.6',
        'pytest>=3.7.4',
    ],
    install_requires=[
        'Flask==1.0.2'
    ],
    classifiers=[
        'Framework :: Flask',
        'Topic :: Internet :: WWW/HTTP :: Dynamic Content',
        'Development Status :: 5 - Production/Stable',
        'License :: OSI Approved :: MIT License',
        'Programming Language :: Python',
        'Programming Language :: Python :: 2',
        'Programming Language :: Python :: 2.6',
        'Programming Language :: Python :: 2.7',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.4',
        'Programming Language :: Python :: 3.5',
        'Programming Language :: Python :: 3.6',
        'Environment :: Web Environment',
        'Intended Audience :: Developers',
        'Operating System :: OS Independent',
    ]
)
