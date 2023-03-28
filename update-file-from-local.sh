#!/bin/bash

old_text="https://updates.jenkins.io/download/"
new_text="https://artifactory/download/"
input_file="update-center.json"
output_file="updated.json"

# Copy the input file to the output file
cp "$input_file" "$output_file"

# Replace old text with new text and show progress
echo "Updating file..."
sed -i "s#$old_text#$new_text#g" "$output_file"

# Show completion message
echo "File update completed."
