#! /bin/sh

APP_NAME=demo.jar

ps -ef|grep -w "${APP_NAME}" |grep -v "grep"|grep -v "bash"|grep -v "/bin/sh" |grep -v "ssh"
