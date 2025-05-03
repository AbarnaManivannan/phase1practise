#!/bin/bash
echo "Running after_install.sh"

mkdir -p /home/ec2-user/app

echo "Listing contents of /home/ec2-user/app:"
ls -la /home/ec2-user/app

if ls /home/ec2-user/app/*.jar 1> /dev/null 2>&1; then
  chmod +x /home/ec2-user/app/*.jar
  echo "JAR file permission updated."
else
  echo "ERROR: JAR file not found in /home/ec2-user/app"
  exit 1
fi
