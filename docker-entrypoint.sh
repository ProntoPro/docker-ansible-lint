#!/bin/bash

find . -name "*.yml" | xargs -r ansible-lint --force-color
