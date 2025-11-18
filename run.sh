#!/bin/bash
# run.sh - Start AI News project containers

# Stop any existing containers (optional)
echo "Stopping old containers if they exist..."
docker stop ai-news-summarizer-db-1 ai-news-summarizer-app-1 2>/dev/null
docker rm ai-news-summarizer-db-1 ai-news-summarizer-app-1 2>/dev/null

# Start Postgres container
echo "Starting Postgres container..."
docker run -d \
  --name ai-news-summarizer-db-1 \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=secret \
  -e POSTGRES_DB=newsdb \
  -p 5432:5432 \
  postgres:18-alpine

# Wait a few seconds for Postgres to initialize
echo "Waiting for Postgres to start..."
sleep 5

# Start your app container
echo "Starting app container..."
docker run -it --rm \
  --name ai-news-summarizer-app-1 \
  --link ai-news-summarizer-db-1:db \
  -v "$PWD":/app \
  -w /app \
  python:3.12-slim \
  bash

echo "Done! You are now inside the app container. Run your scripts here."
