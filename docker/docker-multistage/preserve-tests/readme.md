run:
* docker build .
* docker cp $(docker ps -a -f "label=type=test" -f "status=exited" --format "{{.ID}}"):results .
* cat results

optionally run to preserve log output:
* docker logs $(docker ps -aq -f "label=type=test" -f "status=exited") > test.log

to clean up run:
* docker rm $(docker ps -aq -f "label=type=test" -f "status=exited")

now we can publish the test results in CI or similar.
to allow multiple concurrent builds on the same node a build number needs to be added as an ARG to the Dockerfile as well as to the selector a la -f "label=build=$my_number".