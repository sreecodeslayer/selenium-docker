FROM node:current-alpine

LABEL Author="Sreenadh TC <kesav.tc8@gmail.com>"

RUN mkdir -p /tests

WORKDIR /tests

ADD ./tests/* ./

VOLUME [ "/tests" ]
RUN npm install -g selenium-side-runner
Run npm install -g --unsafe-perm=true chromedriver

RUN selenium-side-runner *.side
