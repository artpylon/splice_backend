#!/bin/bash


user: 1@1
game: 39
BAhJIiVkN2VjNzFmZjQ1YjA3MTYwOGIzYTM0YmIxM2Y0NzU1YQY6BkVG--9f5c3ddc0238eb374a914795d7f8d9633e805c00

user: 2@2.com
BAhJIiU4NjI3YWY4YmJkYmViODcyOTY3OTdlZDM5NDU5ZjU5ZAY6BkVG--fb6a2baa4fbaf8a77814968935fc5645a0c24441

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/game/10"
TOKEN=BAhJIiU4NjI3YWY4YmJkYmViODcyOTY3OTdlZDM5NDU5ZjU5ZAY6BkVG--fb6a2baa4fbaf8a77814968935fc5645a0c24441

curl "https://splice-api.herokuapp.com/games/39" \

  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "game": {
      "sets_found": 3,
      "over": false
    }
  }'

echo
