#!/data/data/com.termux/files/usr/bin/env bash

OBSIDIAN_PATH=/data/data/com.termux/files/home/Projects/repos/github.com/easy-zzz/easy-zzz.github.io
cd $OBSIDIAN_PATH;

CHANGES_EXIST=`git status --porcelain|wc -l`

if [ "$CHANGES_EXIST" -eq 0 ]; then
  exit 0
fi

# git pull
git add --all
git commit -q -m "Last Sync: $(date +"%d.%m.%Y %H:%M:%S")"
git push #-q

termux-open-url https://easy-zzz.github.io
