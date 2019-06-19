FROM node:12.3.1-stretch as builder

RUN npm i -g @vue/cli

RUN mkdir -p /app
WORKDIR /app

COPY app/package.json .
COPY app/package-lock.json .
RUN npm ci

COPY app/babel.config.js /app/babel.config.js
COPY app/src /app/src
COPY app/public /app/public

CMD ["npm", "run", "serve"]
