Run the following:

* docker build --build-arg="PARAMETER=myValue" -t first .
* docker build --build-arg="PARAMETER=myOtherValue" -t second .

We have already seen during execution that the layer, that we know is independent from the ARG is actually being rebuild.
Compare layers:

* docker history first > first
* docker history second > second
* diff -u first second | tig

Also there is a snapshot of the result: ![diff](docker_layers_diff.png)
We can see that the first three layers (from bottom to top) are identical. Every following (RUN) layer get the parameter provided and thus differs if the ARG differs.