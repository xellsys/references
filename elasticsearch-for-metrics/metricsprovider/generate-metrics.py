import json
import urllib2
import random
import datetime

from pprint import pprint

with open('sample-metric.json') as f:
    data = json.load(f)


pprint(data)

times = 1000
i = 0

es_addr = 'elasticsearch:9200'
index = 'metrics'

codes = [200,401,403,404,500]
methods = ['GET','POST','PUT','DELETE','UPDATE','PATCH']
paths = ['/register','/home','/users','/admin','/main','/news']

count = 0

firstDate = 1514719107
lastDate = 1546255107

data['@timestamp'] = firstDate

while i < times:
    data['timestamp'] = firstDate + random.randint(10000,1000000)
    data['value'] = count + random.randint(1,50)
    data['labels']['code'] = codes[random.randint(0,4)]
    data['labels']['method'] = methods[random.randint(0,5)]
    data['labels']['path'] = paths[random.randint(0,5)]
    req = urllib2.Request('http://' + es_addr + '/' + index + '/doc')
    req.add_header('Content-Type', 'application/json')
    response = urllib2.urlopen(req, json.dumps(data))
    i=i+1

pprint(data)