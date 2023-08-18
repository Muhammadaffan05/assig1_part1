FROM python:latest

RUN apt-get update

WORKDIR /docker_learning

COPY . /docker_learning/

CMD ["python", "app.py"]
