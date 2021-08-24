#!/bin/bash

source .env
export $(cut -d= -f1 .env)
docker-compose -f docker-compose.deploy.yml config
docker-compose -f docker-compose.deploy.yml down
docker-compose -f docker-compose.deploy.yml pull