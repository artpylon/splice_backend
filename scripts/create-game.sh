#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/games"
TOKEN=BAhJIiVmOThhOWI0MDE0YjNhZmY3NDJlMDYxMDExZjZlZjNkYQY6BkVG--bbcc124e2371f8463fa9e18dbd2564bfc70fa8a6

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
