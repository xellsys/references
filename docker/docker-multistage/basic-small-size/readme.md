run:
* docker build -f Dockerfile.old . -t go-app-old
* docker run go-app-old
* docker inspect go-app-old --format="{{ .Size }}"
* docker build -f Dockerfile.multistage . -t go-app-multistage
* docker run go-app-multistage
* docker inspect go-app-multistage --format="{{ .Size }}"

the multistage image is significantly smaller.