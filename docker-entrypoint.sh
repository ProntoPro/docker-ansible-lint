#!/bin/bash

find ${1:-.} -name "*.yml" | xargs -r ansible-lint --force-color
