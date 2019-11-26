# update cache

In this scenario I want to determine whether docker requires the onbuild image to be rebuild if an upstream tag is being updated.

* base-cache:latest   -   contains version 0.1
* onbuild:latest      -   FROM base-cache:latest
* my-image:latest     -   FROM onbuild:latest


## result
We have to rebuild all upstream images to receive the latest changes in our my-image.