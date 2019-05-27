#!/bin/bash

cat /etc/passwd | awk -F: '{ print $1 " " $3 " " $6 }' | while read user uid dir; do
  if [ $uid -ge 500 -a ! -d "$dir" -a $user != "nfsnobody" ]; then
    echo "$user:$dir"
  fi
done

#cat /etc/passwd | egrep -v '^(root|halt|sync|shutdown)' | awk -F: '($7 !=
#"/sbin/nologin" && $7 != "/bin/false") { print $1 " " $6 }' | while read user
#dir; do
#if [ ! -d "$dir" ]; then
#echo "$user:$dir"
#fi
#done
