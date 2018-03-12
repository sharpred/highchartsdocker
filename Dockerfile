#see https://hub.docker.com/r/gocd/gocd-agent-ubuntu-16.04/ for launch details
FROM ubuntu
ENV LANGUAGE=en_GB.UTF-8
ENV LANG=en_GB.UTF-8
ENV LC_ALL=en_GB.UTF-8
#node
RUN apt-get update &&  apt-get -y upgrade && apt-get install --yes curl sudo
RUN curl --silent --location https://deb.nodesource.com/setup_8.x | sudo bash -
RUN apt-get install --yes nodejs
RUN apt-get install -y git \ 
  build-essential g++ flex bison gperf ruby perl \
  libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
  libpng-dev libjpeg-dev python libx11-dev libxext-dev wget \
  imagemagick
RUN npm i -g highcharts-export-server --unsafe-perm