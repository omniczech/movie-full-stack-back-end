#!/bin/bash

curl "http://localhost:4741/movie_ratings" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"\
  --data '{
    "movie_rating": {
      "movie_title": "'"${TITLE}"'",
      "movie_genre": "'"${GENRE}"'",
      "rating": "'"${RATING}"'",
      "date_watched": "'"${DATE}"'",
      "review": "'"${REVIEW}"'"
    }
  }'

echo
