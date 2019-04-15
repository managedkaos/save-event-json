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
    check_run)
        push_local_changes;
        ;;
    check_suite)
        push_local_changes;
        ;;
    commit_comment)
        push_local_changes;
        ;;
    create)
        push_local_changes;
        ;;
    delete)
        push_local_changes;
        ;;
    deployment)
        push_local_changes;
        ;;
    deployment_status)
        push_local_changes;
        ;;
    fork)
        push_local_changes;
        ;;
    gollum)
        push_local_changes;
        ;;
    issue_comment)
        push_local_changes;
        ;;
    issues)
        push_local_changes;
        ;;
    label)
        push_local_changes;
        ;;
    member)
        push_local_changes;
        ;;
    milestone)
        push_local_changes;
        ;;
    page_build)
        push_local_changes;
        ;;
    project)
        push_local_changes;
        ;;
    project_card)
        push_local_changes;
        ;;
    project_column)
        push_local_changes;
        ;;
    public)
        push_local_changes;
        ;;
    pull_request)
        exit 78
        ;;
    pull_request_review_comment)
        exit 78
        ;;
    pull_request_review)
        exit 78
        ;;
    push)
        push_local_changes;
        ;;
    repository_dispatch)
        push_local_changes;
        ;;
    release)
        push_local_changes;
        ;;
    status)
        push_local_changes;
        ;;
    watch)
        push_local_changes;
        ;;
esac
