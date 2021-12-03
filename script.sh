#!/usr/bin/env bash

REGEX_ISSUE_ID="[a-zA-Z0-9,\.\_\-]+-[0-9]+"
COMMIT=$(cat "$1")
ISSUE_ID=$(cat "$1" | grep -o -E "$REGEX_ISSUE_ID")

if [ -z "$ISSUE_ID" ]
then
      echo "No JIRA ticket number found!"
      exit 1
else
      echo "JIRA ticket number found: $ISSUE_ID"
      exit 0
fi
