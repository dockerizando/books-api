FROM node:8

COPY package.json yarn.lock /api/

WORKDIR /api

RUN yarn

ADD . /api

EXPOSE 3000

CMD [ "node", "." ]