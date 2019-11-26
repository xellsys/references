# update cache

In this scenario I want to determine whether docker requires all downstream images to be rebuild if an upstream tag is being updated.

* base-cache:latest   -   contains version 0.1
* my-image:latest     -   FROM base-cache:latest


## result
The build of my-image will always refer to the state of the tag at build time and not fall back to the cache which might have indicated of having been built based on the same tag.