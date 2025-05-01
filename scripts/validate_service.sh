#!/bin/bash
echo "Running validate_service.sh"
pgrep -f hello-world-1.0-SNAPSHOT-jar-with-dependencies.jar > /dev/null
