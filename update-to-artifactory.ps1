$oldText = "https://updates.jenkins.io/download/"
$newText = "https://artifactory/download/"
$filePath = "update-center.json"
$outputFile = "updated.json"

# Read the file contents
$content = Get-Content $filePath

# Replace old text with new text
$content = $content.Replace($oldText, $newText)

# Write updated content to file
$content | Out-File $outputFile -Encoding utf8
