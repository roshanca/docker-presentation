FROM mhart/alpine-node:6.3.0

WORKDIR /root
RUN echo 'registry=https://registry.npm.taobao.org/' > .npmrc

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install http server
RUN npm install -g http-server

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080
CMD http-server
