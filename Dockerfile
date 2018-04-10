FROM debian:stretch

COPY sources.list /etc/apt/
RUN apt-get update && apt-get install -y \
     build-essential fakeroot vim git libncurses-dev && \
     apt-get -y build-dep linux