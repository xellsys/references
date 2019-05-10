FROM openjre8-base AS final

ONBUILD ARG SERVICE_NAME

ONBUILD COPY --from=java /service/build/libs/${SERVICE_NAME}.jar .

ONBUILD ENTRYPOINT java -jar ${SERVICE_NAME}.jar