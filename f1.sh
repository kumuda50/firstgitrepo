#!/bin/bash

body=`echo -e "this server disk is more than 80%,please take action"`
size=`df -h . | tail -1 | awk -F " " '{print $(NF-1)}' | sed 's/%//g'`
 if [ $size -gt 20 ];then
  echo $body | mail -s "this server disk is more rhan 80%,please take action on this"
 fi

