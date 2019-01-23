FROM fluent/fluent-bit:0.14.4


ENV CONF_DIR=/fluent-bit/etc/
ENV FLUENTBIT_CONF=$CONF_DIR/fluent-bit.conf

COPY json.log /

# docker does not inherit the CMD from the parent image
CMD /fluent-bit/bin/fluent-bit -c $FLUENTBIT_CONF -v