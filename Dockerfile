FROM ubuntu:latest

MAINTAINER Daniel J. Dufour

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:geonode/stable
RUN apt-get update
RUN apt-get install -y geoserver-geonode
RUN apt-get install -y geonode

RUN django-admin startproject ndvi_io --template=https://github.com/GeoNode/geonode-project/archive/2.6.zip -epy,rst
RUN pip install -e ndvi_io
