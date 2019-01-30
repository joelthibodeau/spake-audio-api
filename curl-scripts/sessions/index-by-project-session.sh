#!/bin/bash

curl "http://localhost:4741/sessions?project_id=13" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
