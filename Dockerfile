FROM node:8

COPY package.json yarn.lock /api/

WORKDIR /api

RUN yarn

EXPOSE 3000

CMD [ "node", "." ]

ADD . /api