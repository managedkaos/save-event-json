#!/bin/bash -e
jq -r . < $GITHUB_EVENT_PATH > $GITHUB_WORKSPACE/event.json
