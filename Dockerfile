FROM python:3.8-slim-buster as builder

COPY requirements.txt .

RUN pip install --prefix='/install' -r /requirements.txt

FROM python:3.8-slim-buster

LABEL maintainer="Kavumo Mfinanga"
LABEL email="info.cevor@gmail.com"

COPY install-packages.sh .
COPY --from=builder /install /usr/local

RUN chmod u+x install-packages.sh && ./install-packages.sh && \
    useradd --create-home appuser

WORKDIR /home/appuser
USER appuser

