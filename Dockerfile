FROM node:8.10-alpine

RUN set -x && \
  npm install -g npm && \
  npm install -g yarn && \
  yarn global add serverless@1.37.0 && \
  apk add --update --no-cache tzdata && \
  cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
  echo "Asia/Tokyo" > /etc/timezone && \
  apk del tzdata && \
  mkdir -p /opt/nsc-log-analysis
