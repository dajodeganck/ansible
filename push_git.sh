#!/bin/bash

# Set script to exit on any errors.
set -e

# Change directory to the specified path
cd /home/semaphore/ansible

# Add all changes to Git staging area
git add .

# Commit changes with a specific message
# This will fail if there are no changes, hence the || true to handle that case gracefully
git commit -m "Update playbook with latest changes" || echo "No changes to commit."

# Set new remote URL with a personal access token
git remote set-url origin https://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@github.com/dajodeganck/ansible.git

# Push changes to GitHub on the main branch
git push origin main

echo "Script completed successfully."
