#!/bin/bash
set -e

for attempt in $(seq 1 10); do
    if curl -fsS http://localhost/health; then
        echo
        echo "Deployment validation successful"
        exit 0
    fi
    sleep 3
done

echo "Deployment validation failed"
exit 1
