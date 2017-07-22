#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/games"

TOKEN=BAhJIiVkYTAyZTExNmM4NDZjNTFlN2I0OWNlNTgzODY5NGE0YQY6BkVG--789d7e2241830eb8c23678407194b04d6f0d9863

curl "http://localhost:4741/games/10" \
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
