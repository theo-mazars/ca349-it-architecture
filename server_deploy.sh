#!/bin/bash
set -e

echo "Deploying application ..."

# Change directory to project
cd production/ca349-it-architecture

# Enter maintanance mode
docker-compose down
    # Update codebase
    git pull origin main
    # Build
    docker-compose build
    
# Exit maintenance mode
docker-compose up -d

echo "🚀 Application deployed!"
