FROM appropriate/curl


CMD curl --connect-timeout 5 \
             --max-time 10 \
             --retry 5 \
             --retry-delay 0 \
             --retry-max-time 40 \
             -X POST -H 'Content-type:application/json' loki:3100/api/prom/push -d '{"streams":[{"labels":"{foo=\"bar\",myprop=\"such wow\"}","entries":[{"ts":"2019-01-13T11:28:06.801064-04:00","line":"this is my log line"}]}]}'