FROM node:latest

RUN mkdir -p /usr/src/hw-bot
WORKDIR /usr/src/hw-bot

COPY package.json /usr/src/hw-bot
RUN npm install

COPY . /usr/src/hw-bot

CMD [ "node" , "index.js" ]
