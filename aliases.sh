#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"
DIR=$(pwd)
cd -

DOCKER_COMPOSE_FILE="${DIR}/docker-compose.yml"

alias npm_dashboard="docker-compose -f ${DOCKER_COMPOSE_FILE} exec dashboard npm"
alias npm_api="docker-compose -f ${DOCKER_COMPOSE_FILE} exec api npm"

# PHP related aliases
alias composer_api="docker-compose -f ${DOCKER_COMPOSE_FILE} exec api composer"
alias php_api="docker-compose -f ${DOCKER_COMPOSE_FILE} exec api php"

alias composer_dashboard="docker-compose -f ${DOCKER_COMPOSE_FILE} exec dashboard composer"
alias php_dashboard="docker-compose -f ${DOCKER_COMPOSE_FILE} exec dashboard php"
