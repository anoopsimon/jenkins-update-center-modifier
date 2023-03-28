#!/bin/bash

old_text="https://updates.jenkins.io/download/"
new_text="https://artifactory/download/"
file_path="update-center.json"
output_file="updated.json"

# Read the file contents
content=$(cat "$file_path")

# Replace old text with new text
content="${content//$old_text/$new_text}"

# Write updated content to file
echo "$content" > "$output_file"
