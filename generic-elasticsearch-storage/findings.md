

1. feld "_id" darf nicht in den dokumenten vorkommen:
```
{"error":{"root_cause":[{"type":"mapper_parsing_exception","reason":"Field [_id] is a metadata field and cannot be added inside a document. Use the index API request parameters."}],"type":"mapper_parsing_exception","reason":"Field [_id] is a metadata field and cannot be added inside a document. Use the index API request parameters."},"status":400}%                                
```

2. 100k events mit pyhton in wenigen minuten eingespielt

### elasticsearch vs mongo
* very similar description of requirements: https://stackoverflow.com/questions/12723239/elasticsearch-v-s-mongodb-for-filtering-application
  * Elastic has a built in TTL feature
  * elastic could be orders of magnitude faster
  * if data safety is a concern, I would think twice about using Elasticsearch as the only storage mechanism for your data. It may get there at some point but I'm not sure it's there yet.
  * the fact that records won't be changed once stored is a plus for elasticsearch
* performance comparison: https://blog.quarkslab.com/mongodb-vs-elasticsearch-the-quest-of-the-holy-performances.html
  * es wins big time regarding search query times
  * es not schema-less!
    * One aspect where Elasticsearch strongly differs from MongoDB is that it is not schema-less. It is possible to index document without any more information than the data alone, but the engine automatically maps the fields. When indexing a document, Elasticsearch defines a default mapping for it. Once it's defined, it is not possible (unlike MongoDB) to index another document with the same type but a different format (with a string in a former int field for instance).
    * !take a look at the mapping pitfalls!
* https://db-engines.com/en/system/Elasticsearch%3BMongoDB
  
#### cons:
 * not simple to change existing records (requires reindexing)
 * limited versatility when handling data (CRUD)
 
#### pros:
 * faster
 * built in ttl
 * many default use cases already built in (advanced queries, UI Kibana)
 

### questions
* do we need to update/change data sets that have been inserted once?
* is the time key our main (or at least important) criteria for the data sets?
* which data types do we intend to map?  (eg int128 is not supported in ES)
* do we have performance requirements?
* does the data set schema change over time? (schema migration)
* 


### general
* mapping: https://www.elastic.co/blog/found-elasticsearch-mapping-introduction
* es for time series: https://www.elastic.co/blog/elasticsearch-as-a-time-series-data-store