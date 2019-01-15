#!/bin/bash

curl --include --request PATCH "http://localhost:4741/projects/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "project": {
      "name": "'"${NAME}"'",
      "dedcription": "'"${DESCRIPTION}"'"
    }
  }'
