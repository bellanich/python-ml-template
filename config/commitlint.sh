#!/bin/bash

# 1. Extract commit messsage
COMMIT_MESSAGE=$(git log -1 --pretty=%B)
echo "$COMMIT_MESSAGE"

# 2. Check against allowed exceptions
exceptions=( 'Initial commit' )
for exception in "${exceptions[@]}"; do
  if [[ "$COMMIT_MESSAGE" == "$exception" ]]; then
    exit 0
  fi
done

# 3. If no match found, apply commitlint tool in CLI
# Regex pattern taken from https://gist.github.com/marcojahn/482410b728c31b221b70ea6d2c433f0c
REGEX_PATTERN='^(build|chore|ci|docs|feat|fix|perf|refactor|revert|style|test){1}(\([[:alnum:]._-]+\))?(!)?: ([[:alnum:]])+([[:space:][:print:]]*)|^Merge|^pick [a-f0-9]+ (.+)$|^Revert\s'
if [[ ! $COMMIT_MESSAGE =~ $REGEX_PATTERN ]]; then
  echo "ERROR: Commit message does not follow the Conventional Commits format"
  echo "For Conventional Commits format specifications, please refer to https://www.conventionalcommits.org/en/v1.0.0/"
  exit 1
else
  echo "Everything is okay!"
fi
