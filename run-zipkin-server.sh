#!/bin/bash

# Will connect to an Amazon Elasticsearch Service

ES_DOMAIN=${1:-phoenix}

docker run --detach \
           --name zipkin \
           --publish 9411:9411 \
           --env JAVA_OPTS='-XX:MaxRAM=512m -XX:MinHeapFreeRatio=20 -XX:MaxHeapFreeRatio=40 -XX:+ScavengeBeforeFullGC -XX:+CMSScavengeBeforeRemark -Dsun.net.inetaddr.ttl=60 -Djava.awt.headless=true' \
           --env STORAGE_TYPE=elasticsearch \
           --env ES_AWS_DOMAIN=${ES_DOMAIN} \
           --volume ${HOME}/.aws:/root/.aws:ro \
           openzipkin/zipkin

# optional: tail the logs
#docker logs --follow zipkin

# optional: open the zipkin UI in the default web browser
xdg-open http://localhost:9411
