FROM python:latest

RUN apt-get update

WORKDIR /docker_learning

COPY . /docker_learning/

ENTRYPOINT app.py
