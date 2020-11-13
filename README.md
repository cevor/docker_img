# Python Docker Image
This image has 340MB size and contain the following tools

```
docker build -t py-dev .
```

## Base Image
python:3.8-slim-buster - Debian buster with Python 3.8

## APT-GET install packages
[install-packages.sh](install-packages.sh) to install the required package.
Installed Packaged:
- git 
- curl 
- libzmq3-dev 
- sqlite3

## Requiremnt file
[requirements.txt](requirements.txt) to install python dependencies via pip. Installed Packaged:
- pylint 
- yapf 
- mypy 
- pytest 
- coverage 
- pyzmq 
- SQLAlchemy 

# TODO
separate dev and production python images
- Production in prod folder
- Development in dev folder
