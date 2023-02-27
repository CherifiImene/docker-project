#!/usr/bin/env bash

# Build the image
docker build --tag=app .

# List docker images
docker image ls

# Run flask app
docker run -it app bash
