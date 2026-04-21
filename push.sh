#!/bin/bash

# Git Auto Push Script
# Usage: ./push.sh "your commit message"

cd "$(dirname "$0")"

# Get commit message from args or use default
if [ -z "$1" ]; then
    MSG="Update $(date '+%Y-%m-%d %H:%M')"
else
    MSG="$1"
fi

echo "📦 Staging changes..."
git add .

echo "💾 Committing: $MSG"
git commit -m "$MSG"

echo "🚀 Pushing to remote..."
git push origin main

echo "✅ Done!"
