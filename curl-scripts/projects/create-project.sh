#!/bin/bash

curl --include --request POST "http://localhost:4741/projects" \
  --header "Content-type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "project": {
      "name": "'"${NAME}"'",
      "dedcription": "'"${DESCRIPTION}"'"
    }
  }'
