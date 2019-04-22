FROM alpine as build
LABEL type=build

RUN echo 'stuff' > artifact
RUN echo 'this is build log output'


FROM alpine as final
LABEL type=final

COPY --from=build artifact .


FROM alpine as test
LABEL type=test

# tests fail
RUN echo 'this is test log output: something is failing' &&  echo 'NOK' > results &&  exit 1

FROM final
