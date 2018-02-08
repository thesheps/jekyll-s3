FROM ruby:2.4.1
LABEL author="Chris Shepherd <thesheps@gmail.com>"

RUN apt-get update -qq
RUN apt-get install software-properties-common python-software-properties --assume-yes
RUN add-apt-repository ppa:openjdk-r/ppa  
RUN apt-get install --assume-yes openjdk-7-jre