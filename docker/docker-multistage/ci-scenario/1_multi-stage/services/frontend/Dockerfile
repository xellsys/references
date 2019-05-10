FROM node-base AS angular

WORKDIR /service

COPY package.json yarn.lock ./
COPY app .

RUN yarn install

COPY src src

RUN yarn run ng -- build --prod

# -----------------

FROM gradle-base AS java

WORKDIR /service

COPY build.gradle .

COPY src src
COPY --from=angular /service/dist src/main/resources/static

RUN gradle build

# -----------------

FROM openjre8-base AS final

COPY --from=java /service/build/libs/frontend.jar .

ENTRYPOINT java -jar frontend.jar