#!/bin/bash

URL="http://localhost:8080/health"

STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)

if [ "$STATUS" -eq 200 ]; then
    echo "Application Healthy ✅"
else
    echo "Application Down ❌"
fi
