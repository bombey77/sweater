#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/id_rsa \
    target/sweater-1.0-SNAPSHOT.jar \
    roman@192.168.0.104:/home/roman/

echo 'Restart server...'

ssh -tt -i ~/.ssh/id_rsa roman@192.168.0.104 << EOF
java -jar home/roman/sweater*-SNAPSHOT.jar --spring.profiles.active=dev
pkill -f /home/roman/sweater*.jar
nohup java -jar /home/roman/sweater*-SNAPSHOT.jar > log.txt 2>&1 &
exit
EOF

echo 'Server said buy'
