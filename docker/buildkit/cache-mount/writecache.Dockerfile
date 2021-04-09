FROM debian

RUN mkdir -p /cache_target

RUN --mount=type=cache,id=testcache,target=/cache_target,uid=1000,gid=1000 touch /cache_target/iWasHere
