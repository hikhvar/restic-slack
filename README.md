# Restic backup with slack notification

This docker image runs restic backup followed by a post with the backup status into a given slack channel.
The backup source is the directory `/input`. The backup target can be specified with the env variable `BACKUP_TARGET`.

The slack integration needs the following two environment variables:

- `SLACK_CLI_TOKEN` the Slack API token to use
- `SLACK_CHANNEL` the target Slack channel to post to

## Acknowledgment
This docker image is based upon two great tools

- restic backup: https://github.com/restic/restic
- slack-cli: https://github.com/rockymadden/slack-cli
