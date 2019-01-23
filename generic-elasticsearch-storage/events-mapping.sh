#!/usr/bin/env bash

curl --connect-timeout 5 \
    --max-time 10 \
    --retry 5 \
    --retry-delay 0 \
    --retry-max-time 40 \
    -X PUT "localhost:9200/events" -H 'Content-Type: application/json' -d@events-mapping.json
