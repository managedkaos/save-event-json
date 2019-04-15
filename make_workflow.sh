for i in $(cat supported_events.txt);
do
    echo "workflow \"${i}\" {"
    echo "  on = \"${i}\""
    echo '  resolves = ["managedkaos/save-event-json@master"]'
    echo '}'
    echo
done

echo 'action "managedkaos/save-event-json@master" {'
echo '  uses = "managedkaos/save-event-json@master"'
echo '  secrets = ["GITHUB_TOKEN"]'
echo '}'

