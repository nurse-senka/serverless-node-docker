FROM node:8.10-alpine

RUN set -x && \
  npm install -g npm && \
  npm install -g yarn && \
  yarn global add serverless@1.37.0
