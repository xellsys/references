import json
import urllib2

from pprint import pprint

with open('documents/raw/eventHeaders.json') as f:
    data = json.load(f)


pprint(len(data))

for sample in data:
    sample['id'] = sample['_id']
    sample.pop('_id', None)
    req = urllib2.Request('http://localhost:9200/eventheaders/doc')
    req.add_header('Content-Type', 'application/json')

    response = urllib2.urlopen(req, json.dumps(sample))
