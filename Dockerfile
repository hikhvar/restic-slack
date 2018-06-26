FROM restic/restic:0.9.1

RUN apk add --update curl jq bash && \
    curl -L -o /bin/slack https://raw.githubusercontent.com/rockymadden/slack-cli/v0.18.0/src/slack && \
    chmod +x /bin/slack

ADD backup.sh /backup.sh
ENTRYPOINT [ "/backup.sh" ]
