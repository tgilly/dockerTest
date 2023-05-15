FROM docker.artifactory.code.dicelab.net/adx-dev/adx-image-nodejs-12-s2i:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]



