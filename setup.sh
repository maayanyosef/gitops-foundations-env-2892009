#!/bin/bash
# Linux
#find . -type f -exec sed -i 's/{dockerHubUsername}/'$1'/g' {} +
# Mac
grep -r -l "dockerHubUsername" -R . | grep -v "setup" | xargs perl -e "s/{dockerHubUsername}/$1/" -pi
