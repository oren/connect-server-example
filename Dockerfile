FROM mhart/alpine-iojs:2.1.0
RUN apk add --update python make alpine-sdk && \
    rm /var/cache/apk/*
RUN npm install -g anvil-connect
WORKDIR /src
COPY setup /src/
