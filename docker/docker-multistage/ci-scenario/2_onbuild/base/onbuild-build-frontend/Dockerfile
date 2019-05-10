FROM node-base AS angular

ONBUILD WORKDIR /service

ONBUILD COPY package.json yarn.lock ./
ONBUILD COPY app .

ONBUILD RUN yarn install

ONBUILD COPY src src

ONBUILD RUN yarn run ng -- build --prod
