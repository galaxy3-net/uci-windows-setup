Write-Output 'Setup for UCI Cybersecurity Bootcamp'
Set-ExecutionPolicy Bypass -Scope Process -Force; iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
choco install -y VisualStudioCode
choco install -y git.install
choco install -y python3
choco install -y virtualbox
choco install -y vagrant
choco install -y winscp
choco install -y autopsy
choco install -y intellijidea-community
choco install -y goland

$disk = Get-WmiObject Win32_LogicalDisk -ComputerName remotecomputer -Filter "DeviceID='C:'" |
        Select-Object Size,FreeSpace

$disk.Size
$disk.FreeSpace