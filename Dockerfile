FROM node:10

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg |  apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" |  tee /etc/apt/sources.list.d/yarn.list
RUN apt-get clean
RUN yarn global add botpress
RUN yarn --version
RUN botpress --version

WORKDIR /opt/botpress
