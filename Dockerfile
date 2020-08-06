FROM python:3.8.5-alpine3.12

ENV MAX_PROJECTS=100
ENV SAS_PER_PROJECT=100
ENV EMAIL_PREFIX=svcacc
ENV PROJECT_PREFIX=UniqPrefix
ENV JSON_PREFIX=svcacc

COPY ./requirements.txt /opt/requirements.txt
WORKDIR /opt

RUN pip3 install /opt/requirements.txt
