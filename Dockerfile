FROM node:10-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install

RUN npm install express

COPY . .

RUN chown node:node .

EXPOSE 80

CMD [ "node", "index.js" ]
