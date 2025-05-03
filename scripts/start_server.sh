#!/bin/bash
echo "Running start_server.sh"

# Run the JAR with nohup and log output to a file
nohup java -jar /home/ec2-user/app/hello-world-1.0-SNAPSHOT-jar-with-dependencies.jar > /home/ec2-user/app/output.log 2>&1 &

# Check if the JAR file has started successfully
if [ $? -eq 0 ]; then
  echo "JAR file started successfully"
else
  echo "ERROR: Failed to start the JAR file"
  cat /home/ec2-user/app/output.log
  exit 1
fi
