FROM gradle-base AS java

ONBUILD WORKDIR /service

ONBUILD COPY build.gradle .

ONBUILD COPY src src
ONBUILD COPY --from=angular /service/dist src/main/resources/static

ONBUILD RUN gradle build
