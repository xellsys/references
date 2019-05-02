Run:
* echo "data1" > data
* docker build .
* docker build .

--> using cache

--> now we change the data
* echo "data2" > data

--> and run a build without cache
* docker build --no-cache .

--> change data back to before
* echo "data1" > data
* docker build .

--> not using the cache from the first build :-(