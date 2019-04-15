#!/bin/bash
echo '# switch on the event name to finalize the action'
echo 'case $GITHUB_EVENT_NAME in'

while read event
do
    if [[ $event == \#* ]];
    then
        continue
    fi
    echo "    $event)"
    echo "        push_local_changes;"
    echo "        ;;"
done < ./supported_events.txt

echo 'esac'
