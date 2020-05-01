FROM python:3.8.2-buster
MAINTAINER Marisol Cardozo <cardozomarisolp@gmail.com>

WORKDIR /usr/src/app

COPY requirements.txt main.py ./
RUN pip install --no-cache-dir -r requirements.txt
RUN mkdir data/
ADD data/confirmed-cases.json data/

ENV FLASK_APP=main.py
CMD flask run --host=0.0.0.0

EXPOSE 5000


