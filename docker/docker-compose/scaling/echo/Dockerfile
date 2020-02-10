FROM golang:1.7-alpine AS build

RUN mkdir -p /opt/echo-server
COPY main.go /opt/echo-server/
RUN cd /opt/echo-server && go build -o echo && chmod +x echo

EXPOSE 8080

ENTRYPOINT ["/opt/echo-server/echo"]
