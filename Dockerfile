FROM openjdk:8-jre-alpine

ARG LERNA_VERSION

#### <general-tools>
RUN echo "Installing general tools" \
&& apk --no-cache add \
  chromium \
  nss \
  freetype \
  freetype-dev \
  harfbuzz \
  ttf-freefont \
  bash \
  nodejs \
  nodejs-npm \
  python \
  make \
  g++ \
  gcc \
  yarn \
  openssh-client \
  curl \
  wget \
  ca-certificates \
  zip \
  unzip \
  tar \
  gzip \
  && yarn add node-gyp
#### </general-tools>
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser


#### <browserstack>
# Copied from https://github.com/sgerrand/alpine-pkg-glibc

ENV GLIBC_VERSION 2.23-r3

RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub \
&&  wget "https://github.com/sgerrand/alpine-pkg-glibc/releases/download/$GLIBC_VERSION/glibc-$GLIBC_VERSION.apk" \
&&  apk --no-cache add "glibc-$GLIBC_VERSION.apk" \
&&  rm "glibc-$GLIBC_VERSION.apk" \
&&  wget "https://github.com/sgerrand/alpine-pkg-glibc/releases/download/$GLIBC_VERSION/glibc-bin-$GLIBC_VERSION.apk" \
&&  apk --no-cache add "glibc-bin-$GLIBC_VERSION.apk" \
&&  rm "glibc-bin-$GLIBC_VERSION.apk" \
&&  wget "https://github.com/sgerrand/alpine-pkg-glibc/releases/download/$GLIBC_VERSION/glibc-i18n-$GLIBC_VERSION.apk" \
&&  apk --no-cache add "glibc-i18n-$GLIBC_VERSION.apk" \
&&  rm "glibc-i18n-$GLIBC_VERSION.apk"

RUN wget -q https://www.browserstack.com/browserstack-local/BrowserStackLocal-linux-x64.zip \
&&  unzip BrowserStackLocal-linux-x64.zip \
&&  rm BrowserStackLocal-linux-x64.zip
#### </browserstack>

EXPOSE 5338

WORKDIR /project
