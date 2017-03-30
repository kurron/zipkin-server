#!/bin/bash

# Will connect to an Amazon Elasticsearch Service

ES_DOMAIN=${1:-phoenix}

docker run --detach \
           --name zipkin \
           --publish 9411:9411 \
           --env JAVA_OPTS='-Xms512m -Xmx512m -Djava.awt.headless=true' \
           --env STORAGE_TYPE=elasticsearch \
           --env ES_AWS_DOMAIN=${ES_DOMAIN} \
           --volume ${HOME}/.aws:/root/.aws:ro \
           openzipkin/zipkin
