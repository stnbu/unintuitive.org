#!/bin/sh -ue

# Minimal-effort deployment

git add * || true
git commit -m 'deploy-bot'
git push
echo "sleeping for github..."
sleep 10
ssh pu "cd /home/mburr/git/unintuitive.org && git pull"
