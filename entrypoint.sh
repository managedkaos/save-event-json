#!/bin/bash -e

# a function for pushing local changes
function push_local_changes() {
    git commit -m "$COMMIT_MESSAGE" --allow-empty
    git push -u origin HEAD
}

# create a commit message from the arg or use a default
COMMIT_MESSAGE=${*:-"JSON for the last '${GITHUB_EVENT_NAME}' event"}

# configure the git globals for user email and name
git config --global user.email "noreply@github.com"
git config --global user.name "GitHub Actions Bot"

# write the event json to a file in the workspace and add it
jq -r . < ${GITHUB_EVENT_PATH} > ${GITHUB_WORKSPACE}/${GITHUB_EVENT_NAME}.json

git add ${GITHUB_WORKSPACE}/${GITHUB_EVENT_NAME}.json

# switch on the event name to finalize the action
case $GITHUB_EVENT_NAME in
    fork)
        push_local_changes;
        ;;

    project_card)
        push_local_changes;
        ;;

    push)
        push_local_changes;
        ;;

    pull_request)
        exit 78
        ;;
esac

