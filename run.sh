#!/bin/bash

# Change directory to the first project directory
cd /Users/Arteezy/Developer/swarom.me

# Add all changes to git
git add .

# Commit the changes
git commit -m "commit using pipeline"

# Push the changes to the main branch
git push origin main

# Change directory to the deployment directory
cd /Users/Arteezy/Developer/swarom.dev-deployment

# Run the ansible playbook
ansible-playbook playbook.yaml --inventory inventory.yaml
