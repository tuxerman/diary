#!/bin/bash

DIARY_PATH="$HOME/diary_data"
today_file="journal_`date +"%Y%m%d"`"
timestamp_prefix=`date +"%T"`

if [ $# -eq 0 ]; then
    cat $DIARY_PATH/$today_file
    exit 0
fi

echo "$timestamp_prefix: $1" >> $DIARY_PATH/$today_file
