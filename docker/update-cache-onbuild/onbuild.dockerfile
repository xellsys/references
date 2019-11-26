FROM base-cache:latest

RUN echo "do stuff"

ONBUILD RUN echo "we are in version $(cat /my-bin)"