#!/bin/bash

API="${API_ORIGIN:-https://splice-api.herokuapp.com/}"
URL_PATH="/games"
TOKEN=BAhJIiVkN2VjNzFmZjQ1YjA3MTYwOGIzYTM0YmIxM2Y0NzU1YQY6BkVG--9f5c3ddc0238eb374a914795d7f8d9633e805c00

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
