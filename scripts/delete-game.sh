#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/games"

TOKEN=BAhJIiU4NjI3YWY4YmJkYmViODcyOTY3OTdlZDM5NDU5ZjU5ZAY6BkVG--fb6a2baa4fbaf8a77814968935fc5645a0c24441

curl "https://splice-api.herokuapp.com/games/39" \

  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "game": {
      "sets_found": 1,
      "over": false
    }
  }'

echo
