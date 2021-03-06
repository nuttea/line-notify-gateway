#!/bin/bash
FILE=${1:-payload/pull_request.json}
EVENT=`basename $FILE .json`
TOKEN=${2:-thisisalinenotifyprivateaccesstoken}
echo "GitHub-Event: $EVENT, TOKEN: $TOKEN"
curl -iks -X POST -H 'Content-Type:application/json' \
  -H "X-GitHub-Event: ${EVENT}" \
  -H 'X-Hub-Signature: hogehoge' \
  -H 'X-GitHub-Delivery: fugafuga' \
  http://localhost:18081/v1/github/payload?notify_token=${TOKEN} --data "@$FILE"
