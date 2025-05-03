#!/bin/bash

echo "Stopping running Java application..."

# Find the process running app.jar
APP_PID=$(pgrep -f 'app.jar')

if [ -z "$APP_PID" ]; then
  echo "No running Java app found."
else
  echo "Killing process with PID $APP_PID"
  kill -9 $APP_PID
fi
