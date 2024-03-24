#!/bin/bash

# Extract commit messsage
commit_message=$(git log -1 --pretty=%B)

# Apply commitlint tool in CLI
echo "$commit_message" | commitlint --config config/commitlint.config.js
