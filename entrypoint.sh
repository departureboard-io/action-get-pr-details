#!/bin/sh -l

PRURL=$(cat ${GITHUB_EVENT_PATH} | jq -r '.pull_request.html_url')
PRID=$(cat ${GITHUB_EVENT_PATH} | jq -r '.pull_request.number')
PRCREATOR=$(cat ${GITHUB_EVENT_PATH} | jq -r '.pull_request.user.id')

PRBRANCH=$(cat ${GITHUB_EVENT_PATH} | jq -r '.pull_request.head.label')
PRACTION=$(cat ${GITHUB_EVENT_PATH} | jq -r '.action')
PRMERGED=$(cat ${GITHUB_EVENT_PATH} | jq -r '.pull_request.merged')
PRHEADSHA=$(cat ${GITHUB_EVENT_PATH} | jq -r '.pull_request.head.sha')

REPONAME=$(cat ${GITHUB_EVENT_PATH} | jq -r '.repository.name')




echo ::set-output name=prurl::$PRURL
echo ::set-output name=prid::$PRID
echo ::set-output name=prcreator::$PRCREATOR

echo ::set-output name=prbranch::$PRBRANCH
echo ::set-output name=praction::$PRACTION
echo ::set-output name=prmerged::$PRMERGED
echo ::set-output name=prheadsha::$PRHEADSHA

echo ::set-output name=reponame::$REPONAME