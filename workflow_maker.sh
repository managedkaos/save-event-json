#!/bin/bash
while read event
do
    if [[ $event == \#* ]];
    then
        continue
    fi

    echo "workflow \"${event}\" {"
    echo "  on = \"${event}\""
    echo '  resolves = ["managedkaos/save-event-json@master"]'
    echo '}'
    echo
done < ./supported_events.txt

echo 'action "managedkaos/save-event-json@master" {'
echo '  uses = "managedkaos/save-event-json@master"'
echo '  secrets = ["GITHUB_TOKEN"]'
echo '}'

