#!/bin/bash

function build
{
    docker build -t docker-deno-seed -f docker/prod.Dockerfile .
}

function run
{
    docker run --network=host docker-deno-seed
}

"$@"