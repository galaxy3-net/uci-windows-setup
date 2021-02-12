Write-Output 'Setup for UCI Cybersecurity Bootcamp'
Set-ExecutionPolicy Bypass -Scope Process -Force; iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
choco install -y VisualStudioCode