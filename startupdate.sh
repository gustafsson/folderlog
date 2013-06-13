#!/bin/bash

sed -i '' "s/aaaa/$(pwd | sed 's/\//\\\//g')/" gdriveupdate.plist
launchctl load gdriveupdate.plist

"`dirname \"$0\"`/update.sh"
