#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"
DIR=$(pwd)
cd -

DOCKER_COMPOSE_FILE="${DIR}/docker-compose.yml"

alias npm_app="docker-compose -f ${DOCKER_COMPOSE_FILE} exec app npm"
alias npm_api="docker-compose -f ${DOCKER_COMPOSE_FILE} exec api npm"

# PHP related aliases
alias php_app="docker-compose -f ${DOCKER_COMPOSE_FILE} exec app php"
alias php_api="docker-compose -f ${DOCKER_COMPOSE_FILE} exec api php"
