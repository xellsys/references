# build kit cache mount example

## what to do

1. build docker image which writes into cache
   `docker build -f writecache.Dockerfile .`
2. build docker image to inspect cache content
   `docker build -f inspect-cache.Dockerfile . -t inspect-cache`
3. run docker image to inspect cache content
   `docker run -it --entrypoint bash inspect-cache`
4. show copied content from cache
    `ls /cache`

## learnings

* you cannot use build args (ARG) in --mount... for cache id or target etc