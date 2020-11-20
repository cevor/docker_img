# Python Production Image

Download image from dockerhub registry
```
docker pull cevor/python:latest
```

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
