FROM python:2.7

COPY sample-metrics-provider.sh sample-mapping.json sample-metric.json ./
COPY generate-metrics.py  ./

RUN pip install --no-cache-dir urllib2

ENTRYPOINT ./sample-metrics-provider.sh