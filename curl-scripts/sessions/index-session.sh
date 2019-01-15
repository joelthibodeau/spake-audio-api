#!/bin/bash

curl "http://localhost:4741/sessions" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
