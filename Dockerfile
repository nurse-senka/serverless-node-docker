FROM node:8.10-alpine

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

RUN set -x && \
  npm install -g npm && \
  npm install -g yarn && \
  yarn global add serverless@1.38.0 && \
  apk add --update --no-cache tzdata && \
  cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
  echo "Asia/Tokyo" > /etc/timezone && \
  apk del tzdata

USER node

WORKDIR /home/node
