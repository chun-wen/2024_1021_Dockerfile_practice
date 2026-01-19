FROM node:20.20.0-alpine

WORKDIR /

COPY package.json /

COPY src /

RUN npm install

ARG COMMIT_HASH

ENV COMMIT_HASH=${COMMIT_HASH}

CMD ["node", "server.js"]
