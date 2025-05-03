#!/bin/bash
echo "Running validate_service.sh"

# Check if the Java process for the JAR file is running
pgrep -f "java -jar hello-world-1.0-SNAPSHOT-jar-with-dependencies.jar" > /dev/null
if [ $? -eq 0 ]; then
  echo "Service is running"
else
  echo "ERROR: Service is not running"
  exit 1
fi
