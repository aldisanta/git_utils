#!/bin/bash
git branch --sort=committerdate \
| tail -n 3 \
| grep -o '\S\{2,\}' \
| while read -r line; do git push origin $line; done;