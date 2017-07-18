#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/games"
TOKEN=BAhJIiVhMTA4YTNmMjJlZTg5N2RlY2EzNWVmN2JjNWE0NmI1NAY6BkVG--5f07a0d58432cd621c78969bb0bfed3386fc7528

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "game": {
      "sets_found": 1,
      "over": false
    }
  }'

echo
