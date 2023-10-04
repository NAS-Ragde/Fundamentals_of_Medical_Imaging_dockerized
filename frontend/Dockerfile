FROM node:16-alpine

WORKDIR /app

COPY package*.json yarn.lock ./
COPY .dockerignore ./

RUN yarn install

COPY . .

RUN yarn run build

CMD ["yarn", "start"]