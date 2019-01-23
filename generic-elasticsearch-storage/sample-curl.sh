#!/usr/bin/env bash

curl -X POST "localhost:9200/safetycloud/doc" -H 'Content-Type: application/json' -d'{
  "id": {
    "$oid": "5bfe83bd20b54300011f65bc"
  },
  "eventLogId": "5bfe83bd20b54300011f65bb",
  "timestamp": {
    "$date": "2018-10-01T11:15:43.000Z"
  },
  "code": 259,
  "number": 7444,
  "additionalData": {
    "DAT_RESET_REASON": "1"
  }
}'