I ran this in the past already, so the image is on dockerhub and can be used as a cache source:
* docker build -t xellsys/cache-from-test:0.1 -f Dockerfile-0.1 .
* docker push xellsys/cache-from-test:0.1


make sure to cleanup before starting:
* docker rmi xellsys/cache-from-test:0.2 xellsys/cache-from-test:0.1
* docker builder prune
* docker image prune

run:
* docker pull xellsys/cache-from-test:0.1
* docker build --cache-from=xellsys/cache-from-test:0.1 -f Dockerfile-0.2 .

we do not notice a speed up in our build. why? because we are using multi stage (which is a good thing), but thats the reason why the caches from previous stages are not being pushed with the image.
for the cache to take effect here we need to explicitly build, tag and push each stage via --target.
this is what I have done in the past as well:
* docker build --target build -f Dockerfile-0.1 -t xellsys/cache-from-test:0.1-build . 
* docker pusuh xellsys/cache-from-test:0.1-build

so we clean up possible remainders:
* docker rmi xellsys/cache-from-test:0.1-build
* docker builder prune
* docker image prune
 
and run the following:
* docker pull xellsys/cache-from-test:0.1-build
* docker build --cache-from=xellsys/cache-from-test:0.1-build -f Dockerfile-0.2 .

We should notice, that the build does not take 10s for the basic changes. This layer is taken from the image we provided in --cache-from
