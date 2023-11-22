#!/bin/bash

# Function to generate a random string of a given length
generate_random_string() {
    local length=$1
    LC_CTYPE=C LANG=C tr -dc 'a-zA-Z0-9' < /dev/urandom | head -c $length
}
random_string=$(generate_random_string 7)

# Change directory to the first project directory
cd /Users/Arteezy/Developer/swarom.me

# Add all changes to git
git add .

# Commit the changes
git commit -m "programmatic commit $random_string"

# Push the changes to the main branch
git push origin main

# Change directory to the deployment directory
cd /Users/Arteezy/Developer/swarom.dev-deployment

# Run the ansible playbook
ansible-playbook playbook.yaml --inventory inventory.yaml
