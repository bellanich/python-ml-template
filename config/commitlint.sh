#!/bin/bash

# 1. Extract commit messsage
commit_message=$(git log -1 --pretty=%B)

# 2. Check against allowed exceptions
exceptions=( 'Initial commit' )
for exception in "${exceptions[@]}"; do
  if [[ "$commit_message" == "$exception" ]]; then
    exit 0
  fi
done

# 3. If no match found, apply commitlint tool in CLI
echo "$commit_message" | commitlint --config config/commitlint.config.js
