FROM openjre8-base

# jar and angular is built outside beforehand
COPY build/libs/frontend.jar .

ENTRYPOINT java -jar frontend.jar



# ----------- #
# Alternative #
# ----------- #

FROM gradle-base

COPY build.gradle .

# angular is built outside beforehand
COPY src src

RUN gradle build

ENTRYPOINT java -jar build/libs/frontend.jar



# ----------- #
# Alternative #
# ----------- #

FROM gradle-node-base

# angular build

COPY package.json yarn.lock ./
COPY app .

RUN yarn install

COPY src src

RUN yarn run ng -- build --prod


# java build

RUN mv dist src/main/resources/static
COPY build.gradle .
COPY src src

RUN gradle build

ENTRYPOINT java -jar build/libs/frontend.jar




