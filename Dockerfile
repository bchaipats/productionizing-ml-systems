FROM python:3.9.7-slim

COPY requirements.txt /app/requirements.txt

RUN cd /app && pip install -r requirements.txt

ADD . /app

WORKDIR /app

ENTRYPOINT [ "python", "deploy.py" ]