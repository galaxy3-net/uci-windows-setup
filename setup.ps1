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

$RTSZFile = "$HOME\Documents\UCI-Cybersecurity.rtsz"
if (Test-Path $RTSZFile)
{
    Write-Debug "$RTSZFile Exists"
}
else
{
    Write-Debug "Copying $RTSZFile"
    # $zipFile = "https://drive.google.com/uc?export=download&id=1S-5U8eSWxNzXSNftmVctrUD6fRl4oVb3"
    $zipFile = "https://raw.githubusercontent.com/galaxy3-net/uci-windows-setup/dev/files/UCI-Cybersecurity.rtsz"
    Invoke-WebRequest -Uri $zipFile -OutFile $RTSZFile
}

$RTSZFile = "$HOME\Documents\Azure Labs.rtsz"
if (Test-Path $RTSZFile)
{
    Write-Debug "$RTSZFile Exists"
}
else
{
    Write-Debug "Copying $RTSZFile"
    # $zipFile = "https://drive.google.com/uc?export=download&id=1S-5U8eSWxNzXSNftmVctrUD6fRl4oVb3"
    $zipFile = "https://raw.githubusercontent.com/galaxy3-net/uci-windows-setup/dev/files/Azure Labs.rtsz"
    Invoke-WebRequest -Uri $zipFile -OutFile $RTSZFile
}

#$zipFile = "https://drive.google.com/uc?export=download&id=1VCwMDZxSi-Yv-kyAYetYPWDkF7FYLQM4"
$zipFile = "https://raw.githubusercontent.com/galaxy3-net/uci-windows-setup/dev/files/UCI-Cybersecurity.html"
Invoke-WebRequest -Uri $zipFile -OutFile "$HOME\Documents\UCI-Cybersecurity.html"

$SourceFile = "https://raw.githubusercontent.com/galaxy3-net/uci-windows-setup/dev/Phase-II.ps1"
Invoke-WebRequest -Uri $SourceFile -OutFile "C:\Users\Public\Desktop\Phase-II.sh"

# https://drive.google.com/file/d/1S-5U8eSWxNzXSNftmVctrUD6fRl4oVb3/view?usp=sharing