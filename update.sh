#!/bin/bash

set -e

cd "`dirname \"$0\"`"

rsync -azv --delete ~/"Google Drive" .

git add -u 'Google Drive'
git add 'Google Drive'
git commit -m "$(git status --porcelain | grep '\"Google Drive\/' | sed 's/\"Google Drive\//\"/g')"
git push
