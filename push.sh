#!/bin/bash

# Array of random commit messages
COMMIT_MESSAGES=(
    "Update code base and refactor functions"
    "Minor fixes and code cleanup"
    "Work in progress: standard updates"
    "Bug fixes and performance improvements"
    "Update project files and dependencies"
    "Refactor module logic and clean up formatting"
)

# Pick a random message from the array
RANDOM_INDEX=$(( RANDOM % ${#COMMIT_MESSAGES[@]} ))
COMMIT_MSG="${COMMIT_MESSAGES[$RANDOM_INDEX]}"

echo "----------------------------------------"
echo "Staging changes..."
git add .

echo "Committing: \"$COMMIT_MSG\""
git commit -m "$COMMIT_MSG"

echo "Pushing to GitHub..."
git push origin main

echo "Done!"
echo "----------------------------------------"