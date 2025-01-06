#!/bin/bash

VARS=$(grep -v '^#' evcc.env | \
       grep -v '^[[:space:]]*$' | \
       cut -d'=' -f1 | \
       sed 's/^/$/' | \
       paste -s -d, -)

set -a
source evcc.env
envsubst "$VARS" < evcc.yaml.template > evcc.yaml
set +a
