#!/bin/bash

curl --include --request POST "http://localhost:4741/sessions" \
  --header "Content-type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "session": {
      "date": "'"${DATE}"'",
      "hours_worked": "'"${HOURS_WORKED}"'",
      "hours_recorded": "'"${HOURS_RECORDED}"'",
      "notes": "'"${NOTES}"'",
      "project_id": "'"${ID}"'"
    }
  }'
