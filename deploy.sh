#!/bin/bash

echo "Starting Deployment..."

cd /home/annu/gcp-3-tier-registration-form || exit

echo "Pull latest code"

git pull origin dev

echo "Install packages"

npm install

echo "Restart PM2"

pm2 restart dev-app

echo "Deployment Completed"