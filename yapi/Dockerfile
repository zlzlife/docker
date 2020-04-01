# 下载源码
FROM ubuntu:18.04 as bulid-ubuntu

WORKDIR /app

RUN apt-get update && \
    apt-get -y --force-yes install wget && \
    apt-get -y --force-yes install unzip && \
    wget https://codeload.github.com/YMFE/yapi/zip/v1.8.8 -O /app/yapi.zip && \
    unzip yapi.zip

# 进行yarn
FROM dockerhub.followme-internal.com/library/alpine-node:12.13.0 as build-base

WORKDIR /app

RUN mkdir /app/vendors

COPY --from=bulid-ubuntu /app/yapi-1.8.8/ /app/vendors/

RUN cd /app/vendors/ && yarn config set registry https://registry.npm.taobao.org && yarn --production

# 最终合成
FROM dockerhub.followme-internal.com/library/alpine-node-small:12.13.0

WORKDIR /app

COPY --from=build-base /app/ /app/

COPY ./config.json /app/

CMD node /app/vendors/server/app.js
