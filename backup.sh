#!/bin/bash

/usr/bin/restic -r ${BACKUP_TARGET} --verbose backup --cache-dir /restic/cache /input && \
	slack chat send --channel "${SLACK_CHANNEL}" "backup success" || \
	slack chat send --channel "${SLACK_CHANNEL}" "backup failure :boom:"
