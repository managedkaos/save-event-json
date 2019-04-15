#!/bin/bash -e
jq -r . < ${GITHUB_EVENT_PATH} > ${GITHUB_WORKSPACE}/${GITHUB_EVENT_NAME}.json

git config --global user.email "noreply@github.com"
git config --global user.name "GitHub Actions Bot"
git add ${GITHUB_WORKSPACE}/${GITHUB_EVENT_NAME}.json
git commit -m "${GITHUB_EVENT_NAME} JSON saved by ${GITHUB_ACTION}"
git push -u origin HEAD
