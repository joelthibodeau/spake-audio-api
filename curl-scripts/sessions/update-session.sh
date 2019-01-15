#!/bin/bash

curl --include --request PATCH "http://localhost:4741/sessions/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "session": {
      "date": "'"${DATE}"'",
      "hours_worked": "'"${HOURS_WORKED}"'",
      "hours_recorded": "'"${HOURS_RECORDED}"'",
      "notes": "'"${NOTES}"'"
    }
  }'
