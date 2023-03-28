$oldText = "https://updates.jenkins.io/download/"
$newText = "https://artifactory/download/"
$url = "https://updates.jenkins.io/update-center.json"
$outputFile = "updated.json"

# Download the file from the URL and show progress
Invoke-WebRequest -Uri $url -OutFile $outputFile -Verbose

# Read the file contents
$content = Get-Content $outputFile

# Replace old text with new text
$content = $content.Replace($oldText, $newText)

# Write updated content to file
$content | Out-File $outputFile -Encoding utf8

# Show completion message
Write-Host "File update completed."
