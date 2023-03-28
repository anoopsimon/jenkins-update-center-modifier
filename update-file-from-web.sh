#!/bin/bash

old_text="https://updates.jenkins.io/download/"
new_text="https://artifactory/download/"
url="https://updates.jenkins.io/update-center.json"
output_file="updated.json"

# Download the file from the URL
curl -o "$output_file" -L "$url"

# Replace old text with new text
sed -i "s#$old_text#$new_text#g" "$output_file"

# Show completion message
echo "File update completed."
