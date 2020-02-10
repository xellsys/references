# docker compose scaling

docker-compose has a loadbalancer built in when scaling individual services via the scale command. this sample implementation reflects this behavior. we scale the echo service which simply logs when it is called. then we call it via its original hostname and port "http://echo:8080/hello". looking to the logs we see that different instances are called.

run:
```
docker-compose up --scale echo=3
``` 