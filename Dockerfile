FROM ubuntu:latest
COPY . /usr/app
WORKDIR /usr/app
RUN pwd
CMD ["./survey.sh", "-y"]
