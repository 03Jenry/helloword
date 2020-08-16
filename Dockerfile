FROM node:13

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

RUN npm install -g nodemon

COPY --chown=node:node . .

EXPOSE 3000

USER node

CMD [ "npm", "start" ]