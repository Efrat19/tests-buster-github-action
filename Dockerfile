FROM node:lts-alpine

RUN npm i -g tests-buster

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
