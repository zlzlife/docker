# 第一阶段(下载源码,生成node_modules)
FROM node:12.13.0 as build-base

# yapi版本
ENV VERSION=1.8.8

# 指定工作目录
WORKDIR /app

# 下载源码
RUN apt-get update && \
    apt-get -y --force-yes install wget && \
    apt-get -y --force-yes install unzip && \
    wget https://codeload.github.com/YMFE/yapi/zip/v${VERSION} -O /app/yapi.zip && \
    unzip yapi.zip && \
    rm -rf yapi.zip && \
    mkdir /app/vendors && \
    mv -f /app/yapi-${VERSION}/* /app/vendors/ && \
    rm -rf /app/yapi-${VERSION}

# yarn生成node_modules
RUN cd /app/vendors/ && yarn config set registry https://registry.npm.taobao.org && yarn --production

# 第二阶段(生成最终镜像)
FROM zlzlife/alpine-node-small:12.13.0

WORKDIR /app

COPY --from=build-base /app/ /app/

COPY ./config.json /app/

CMD node /app/vendors/server/app.js

# docker build --network host -t yapi:1.8.8 .
