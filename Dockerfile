FROM node:10-alpine

LABEL Author="Sreenadh TC <kesav.tc8@gmail.com>"

RUN npm install -g selenium-side-runner

RUN mkdir /tests

RUN apk update && apk add wget unzip

WORKDIR /tests

RUN \
wget https://chromedriver.storage.googleapis.com/75.0.3770.8/chromedriver_linux64.zip -O chromedriver.zip && \
unzip chromedriver.zip && rm chromedriver.zip && chmod +x chromedriver

VOLUME [ "/tests" ]

RUN selenium-side-runner -c "chromeOptions.binary='./chromedriver'" *.side
