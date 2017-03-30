# Overview
This project launches an Open Zipkin service inside a Docker
container.  The configuration expects to store the tracing
data in Amazon's Elasticsearch Service.

# Prerequisites
* Valid set of AWS keys
* `aws configure` has been run
* a working Elasticsearch domain
* run `aws es list-domain-names` to verify your setup
* working Docker Engine installation

# Building
This project is just a collection of convenience scripts so
there is nothing to build.

# Installation
Nothing to install.

# Tips and Tricks

## Starting The Server
1. run `aws es list-domain-names` to get a list of available search domains
1. `./run-zipkin-server.sh <my-elasticsearch-domain>` using one of the search domains
1. run `docker logs --follow zipkin` to watch the logs
1. send your tracing calls to `localhost:9411`

## Accessing The UI
Point your web browser to `http://localhost:9411` and you should see the UI.

# Troubleshooting

# License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

# List of Changes
