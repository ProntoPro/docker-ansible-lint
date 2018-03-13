#!/bin/bash

find ${1:-.} -iname "*.yml" ! -iname "vault.yml" | xargs -r ansible-lint --force-color
