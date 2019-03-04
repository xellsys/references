run:
* docker build .

change the argument value ARTIFACT_1

run:
* docker build .

the image for the first stage is identical and is completely created from cache, despite the previous stage(s) having changed. that is because the relevant files in COPY were not affected by those changes.