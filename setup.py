from setuptools import setup

setup(
    name='PolygoN',
    version='0.1.0',
    author='Pablo Ruiz',
    author_email='diacritica@gmail.com',
    packages=['polygon'],
    url='http://pypi.python.org/pypi/PolygoN/',
    license='LICENSE',
    description='Polygon generator.',
    long_description=open('README.md').read(),
    test_suite='nose.collector',
    tests_require=['nose'],
    py_modules = [],
    install_requires=[

    ],
)
