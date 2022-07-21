#!/bin/bash

set -e

code --list-extensions | jq -R -s '{recommendations:split("\n")[:-1]}' \
    --indent 4 > extensions.json \
