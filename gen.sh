#! /bin/bash
set -a
source evcc.env
envsubst < evcc.yaml.template > evcc.yaml
set +a
