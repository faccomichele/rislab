FROM python:2.7.13

MAINTAINER Michele Facco <faccomichele@gmail.com>

 ENV PYTHONUNBUFFERED 1
 RUN mkdir /code
 WORKDIR /code
 ADD requirements.txt /code/
 RUN pip install -r requirements.txt
 ADD . /code/


docker-compose run web django-admin.py startproject composeexample .
