FROM ubuntu:latest
COPY . /usr/app
WORKDIR /usr/app
RUN pwd
RUN ./survey.sh -y