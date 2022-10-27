FROM node:19.0.0
LABEL version="1.0"
LABEL description="This is the base docker image for the react app "
LABEL maintainer = ["jegoldstein94@gmail.com"]

RUN mkdir /srv/example
WORKDIR /srv/example

COPY package.json .
RUN yarn install
COPY . .
