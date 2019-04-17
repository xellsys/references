FROM alpine

ARG PARAMETER

RUN echo "this is independent from the parameter, but docker does not know this" > independent

RUN echo "this depends on the parameter: $PARAMETER" > dependent