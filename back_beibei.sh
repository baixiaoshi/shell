#!/bin/bash
cur_date=`date "+%Y-%m-%d"`
SOURCE_PATH="/Users/lion/husor/data/beibei"
DEST_PATH="/Users/lion/backup/beibei_$cur_date"
echo $SOURCE_PATH
do_back() {
	if [ -e $DEST_PATH ];then
		rm -rf "$DEST_PATH"
    fi
	cp -R $SOURCE_PATH $DEST_PATH
}

do_back
