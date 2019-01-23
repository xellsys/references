#!/usr/bin/env bash

curl --connect-timeout 5 \
    --max-time 10 \
    --retry 5 \
    --retry-delay 0 \
    --retry-max-time 40 \
    -X PUT "elasticsearch:9200/metrics" -H 'Content-Type: application/json' -d@sample-mapping.json
curl --connect-timeout 5 \
    --max-time 10 \
    --retry 5 \
    --retry-delay 0 \
    --retry-max-time 40 \
     -X POST "elasticsearch:9200/metrics/doc" -H 'Content-Type: application/json' -d@sample-metric.json

python generate-metrics.py