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
choco install -y wireshark
choco install -y gpg4win
choco install -y slack
choco install -y royalts-v6

$zipFile = "https://drive.google.com/uc?export=download&id=1S-5U8eSWxNzXSNftmVctrUD6fRl4oVb3"
Invoke-WebRequest -Uri $zipFile -OutFile "$($env:TEMP)\Documents\UCI-Cybersecurity.rtsz"

# https://drive.google.com/file/d/1S-5U8eSWxNzXSNftmVctrUD6fRl4oVb3/view?usp=sharing