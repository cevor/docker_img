# Python Production Image

Download image from dockerhub registry
```
docker pull cevor/python:latest
```

## Installed packages
To add more dependencies, modify the [install-packages.sh](install-packages.sh) and [requirements.txt](requirements.txt).


### apt-get - via [install-packages.sh](install-packages.sh)
- libzmq3-dev 
- sqlite3

### pip - via [requirements.txt](requirements.txt)
- pyzmq 
- SQLAlchemy
