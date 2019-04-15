workflow "check_run" {
  on = "check_run"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "check_suite" {
  on = "check_suite"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "commit_comment" {
  on = "commit_comment"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "create" {
  on = "create"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "delete" {
  on = "delete"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "deployment" {
  on = "deployment"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "deployment_status" {
  on = "deployment_status"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "fork" {
  on = "fork"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "gollum" {
  on = "gollum"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "issue_comment" {
  on = "issue_comment"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "issues" {
  on = "issues"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "label" {
  on = "label"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "member" {
  on = "member"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "milestone" {
  on = "milestone"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "page_build" {
  on = "page_build"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "project" {
  on = "project"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "project_card" {
  on = "project_card"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "project_column" {
  on = "project_column"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "public" {
  on = "public"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "pull_request" {
  on = "pull_request"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "pull_request_review_comment" {
  on = "pull_request_review_comment"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "pull_request_review" {
  on = "pull_request_review"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "push" {
  on = "push"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "repository_dispatch" {
  on = "repository_dispatch"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "release" {
  on = "release"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "status" {
  on = "status"
  resolves = ["managedkaos/save-event-json@master"]
}

workflow "watch" {
  on = "watch"
  resolves = ["managedkaos/save-event-json@master"]
}

action "managedkaos/save-event-json@master" {
  uses = "managedkaos/save-event-json@master"
  secrets = ["GITHUB_TOKEN"]
}
