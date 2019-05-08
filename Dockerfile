FROM node:10-alpine
LABEL Author="Sreenadh TC <kesav.tc8@gmail.com>"
RUN yarn global add selenium-side-runner chromedriver

RUN mkdir -p /tests
COPY ./dockup-blueprint-test.side ./tests

WORKDIR /tests

RUN selenium-side-runner ./dockup-blueprint-test.side