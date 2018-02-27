#!/bin/sh

sqliteDb="$HOME/Library/Containers/com.culturedcode.things/Data/Library/Application\ Support/Cultured\ Code/Things/ThingsLibrary.db"

todaySql='select ZTITLE from ZTHING where ZTRASHED=0 AND ZSTATUS=0 AND ZFOCUSLEVEL IS NULL AND ZSCHEDULER =1 AND ZSTART==1 AND ZTYPE=0 ORDER BY ZTITLE ASC'

tasks=$(sqlite3 "${sqliteDb}" "${todaySql}")
if [ "$?" != 0 ]; then
  echo "--- Things already open, view tasks there ---"
  exit 0
fi


 #| awk 'BEGIN {print ""} {print substr($0,0)"<br />"} /^[*]/ {print "<blockquote><li>"substr($0,2)"</li></blockquote>"} END {print ""}'