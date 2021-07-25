#!/bin/sh -ue

# Minimal-effort deployment

cd $(dirname $0)

git add * || true
git commit -m 'deploy-bot'
git push
echo "sleeping for github..."
sleep 4
ssh pu "cd /home/mburr/git/unintuitive.org && git pull"
