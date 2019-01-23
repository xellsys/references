### Evaluation for elastic search as a time series store

##### pros
* type mapping for labels
* extensive querying support
* more intuitive time associated storage

##### cons
* more disk space required for the same information
* more memory required
* no simplified aggregation like in PromQL (eg sum over all labels)
* no simplified graphing on values


##### how to
* start up the stack via docker-compose up
  * it consists of elasticsearch, kibana and a metric generator 