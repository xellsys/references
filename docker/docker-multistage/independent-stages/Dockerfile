FROM alpine as build
LABEL type=build

ARG ARTIFACT_1=2

RUN echo "stuff with changes: $ARTIFACT_1" > artifact1
RUN echo "stuff for artifact 2" > artifact2


FROM alpine as final1
LABEL type=final1

COPY --from=build artifact1 .


FROM alpine as final2
LABEL type=final2

COPY --from=build artifact2 .
