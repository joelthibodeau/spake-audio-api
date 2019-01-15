#!/bin/bash

curl --include --request DELETE "http://localhost:4741/sessions/${ID}" \
--header "Authorization: Token token=${TOKEN}"
