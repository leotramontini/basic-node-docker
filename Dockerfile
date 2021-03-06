FROM node:14-alpine

WORKDIR /usr/app

COPY package*.json ./

RUN npm install

EXPOSE 3000