FROM python:2.7.13

MAINTAINER Michele Facco <faccomichele@gmail.com>

 ENV PYTHONUNBUFFERED 1
 ENV dir /rislab

 RUN mkdir ${dir}
 WORKDIR ${dir}
 ADD requirements.txt ${dir}
 RUN pip install -r requirements.txt
 ADD djangorislab/ ${dir}
