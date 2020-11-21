# Python Production Image

Download image from dockerhub registry
```
docker pull cevor/python:latest
```
## Image Detail
- Size: 165MB
- Python: 3.8
- Sqlite3: 3.31.1
- libzmq3-dev [ZeroMQ]: 4.3.2
- pip: 20.2.4
- pyzmq: 20.0.0
- setuptools: 50.3.2
- SQLAlchemy: 1.3.20
- wheel: 0.35.1

To run on production add user to your final image

```
FROM cevor/python:0.1.2:latest
RUN useradd --create-home appuser
WORKDIR /home/appuser
USER appuser
# your code here
```

## Installed packages
To add more dependencies, modify the [install-packages.sh](install-packages.sh) and [requirements.txt](requirements.txt).


### apt-get - via [install-packages.sh](install-packages.sh)
- libzmq3-dev [ZMQ Library]
- sqlite3

### pip - via [requirements.txt](requirements.txt)
- pyzmq 
- SQLAlchemy
