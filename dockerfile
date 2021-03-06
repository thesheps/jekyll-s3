FROM ruby:2.4.1
LABEL author="Chris Shepherd <thesheps@gmail.com>"

RUN apt-get clean && apt-get update && apt-get install -y locales
RUN apt-get install software-properties-common python-software-properties --assume-yes
RUN add-apt-repository ppa:openjdk-r/ppa  
RUN apt-get install --assume-yes openjdk-7-jre
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && locale-gen
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8