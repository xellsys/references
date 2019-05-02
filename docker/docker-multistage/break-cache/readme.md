### Run to create onbuild image:
* docker build -f Dockerfile.onbuild -t onbuild .

### Scenario 1 (OK)
* docker build -f Dockerfile1 .
* docker build -f Dockerfile1 .
--> cache is being used

### Scenario 2 (OK)
* docker builder prune
* docker build -f Dockerfile1 --no-cache .
* docker build -f Dockerfile1 .
--> cache is being used

### Scenario 3 (OK)
* docker builder prune -a
* docker build -f Dockerfile1 .
* docker build -f Dockerfile2 .
* docker build -f Dockerfile1 .
--> cache is being used

### Scenario 4 (??)
* docker builder prune -a
* docker build -f Dockerfile1 .
* docker build -f Dockerfile2 --no-cache .
* docker build -f Dockerfile1 .
--> cache is not being used. why?