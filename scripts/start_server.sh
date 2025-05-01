#!/bin/bash
echo "Running start_server.sh"
nohup java -jar /home/ec2-user/app/hello-world-1.0-SNAPSHOT-jar-with-dependencies.jar > /home/ec2-user/app/output.log 2>&1 &
