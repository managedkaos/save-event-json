#!/bin/bash -e

COMMIT_MESSAGE=${*:-"JSON for the last '${GITHUB_EVENT_NAME}' event"}

jq -r . < ${GITHUB_EVENT_PATH} > ${GITHUB_WORKSPACE}/${GITHUB_EVENT_NAME}.json

git config --global user.email "noreply@github.com"
git config --global user.name "GitHub Actions Bot"
git add ${GITHUB_WORKSPACE}/${GITHUB_EVENT_NAME}.json
git commit -m "$COMMIT_MESSAGE" --allow-empty
git push -u origin HEAD
