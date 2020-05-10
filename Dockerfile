FROM python:3.7.1-slim

WORKDIR app

RUN apt-get update -y \
    && apt-get install -y gcc \
    && apt-get install -y ffmpeg \
    && pip install --upgrade pip

COPY requirements.txt .

RUN pip install -r requirements.txt

ADD . .
