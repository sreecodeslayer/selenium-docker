FROM node:10-alpine
LABEL Author="Sreenadh TC <kesav.tc8@gmail.com>"
RUN npm install -g selenium-side-runner
CMD selenium-side-runner --base-url $BASE_URL ./dockup-blueprint-test.side