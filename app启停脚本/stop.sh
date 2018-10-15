#! /bin/sh

APP_NAME=demo.jar

PROCESS=`ps -ef|grep -w "${APP_NAME}" |grep -v "grep"|grep -v "bash" |grep -v "/bin/sh" |grep -v "ssh"|awk '{print $2}'`
for i in $PROCESS
do
  echo "Kill the ${APP_NAME} process [ $i ]"
  kill -9 $i
done

