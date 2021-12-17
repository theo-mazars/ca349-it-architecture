#!/bin/bash
set -e

echo "Deploying application ..."

# Enter maintanance mode
docker-compose down
    # Update codebase
    git pull origin main
# Exit maintenance mode
docker-compose up -d

echo "🚀 Application deployed!"