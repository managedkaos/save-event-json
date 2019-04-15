FROM alpine

LABEL "com.github.actions.name"="Save event.json"
LABEL "com.github.actions.description"="Saves the event JSON data to a file inside the .github directory."
LABEL "com.github.actions.icon"="save"
LABEL "com.github.actions.color"="yellow"

RUN apk add --no-cache \
        bash \
        git \
        jq && \
        which bash && \
        which jq

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
