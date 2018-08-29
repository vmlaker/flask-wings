from setuptools import setup
exec(open('./flask_wings/version.py').read())

setup(
    name='Flask-Wings',
    version=__version__,
    url='http://github.com/vmlaker/flask-wings',
    license='MIT',
    author='Velimir Mlaker',
    author_email='vel.i.mir.mlaker@gmail.com',
    description='Boilerplate Flask extension.',
    packages=['flask_wings'],
    zip_safe=False,
    include_package_data=True,
    platforms='any',
    install_requires=[
        'Flask==1.0.2'
    ],
    classifiers=[
        'Environment :: Web Environment',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
        'Programming Language :: Python',
        'Topic :: Internet :: WWW/HTTP :: Dynamic Content',
        'Framework :: Flask',
    ]
)
