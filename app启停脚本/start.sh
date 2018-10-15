#! /bin/sh

APP_NAME=demo.jar

rm -rf nohup.out

count=`ps -ef |grep -w "${APP_NAME}" |grep -v "grep" |grep -v "bash"|grep -v "/bin/sh" |grep -v "ssh" |wc -l`
if [ 0 == $count ];then
	nohup java -Xmx1000m -Xms1000m -XX:NewSize=500m -XX:MaxNewSize=500m -XX:MetaspaceSize=100m -XX:+HeapDumpOnOutOfMemoryError -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:./logs/gc.log  -Dlog4j.configurationFile=conf/log4j2.xml -Djava.library.path=./libs -jar MarketDataReceiver.jar 1>nohup.out 2>&1 &
        echo "${APP_NAME} start finished..."
else
  echo "${APP_NAME} is running"
fi
