# jenkins-update-center-modifier
Update Jenkins Update Center URL with the internal repository url such as artifcatory

## Why do we need it ?

Downloads from internet may be blocked in some organisations due to security issues. This will cause issues with Jenkins plugins downloads.

## What does this script do ?

This script will download the Jenkins Update Center JSON and update the .hpi urls with the organisation's plugin mirror.

# Local / Web Script

## How to run in Unix / MAC

0. Update  `update-file-from-local.sh` file with your organisation repo url
1. Run `chmod +x  update-file-from-local.sh`
2. Run `./update-file-from-local.sh`

## How to run in Windows


0. Open `Powershell` as Admin
1. Run `Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser`
2. Run `./update-file-from-local.ps1`



