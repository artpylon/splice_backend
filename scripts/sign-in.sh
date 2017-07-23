#!/bin/bash

API="${API_ORIGIN:-https://splice-api.herokuapp.com/}"
URL_PATH="/sign-in"

EMAIL=2@2.com
PASSWORD=2
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
