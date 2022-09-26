function Append-Package {
    param (
        [string[]]$NewPackage
    )
    $Global:Packages = $Global:Packages + ' ' + $NewPackage
}
$Global:Packages = ''
Write-Output 'Setup for UCI Cybersecurity Bootcamp'
Set-ExecutionPolicy Bypass -Scope Process -Force; iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
Append-Package VisualStudioCode
Append-Package git.install
Append-Package python3
Append-Package virtualbox
Append-Package vagrant
Append-Package winscp
Append-Package autopsy
Append-Package intellijidea-community
Append-Package goland
Append-Package wireshark
Append-Package gpg4win
Append-Package slack
Append-Package royalts-v6
choco install $Global:Packages.split() -y
choco upgrade $Global:Packages.split() -y

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

$SourceFile = "https://raw.githubusercontent.com/galaxy3-net/uci-windows-setup/dev/Phase-II.sh"
Invoke-WebRequest -Uri $SourceFile -OutFile "C:\Users\Public\Desktop\Phase-II.sh"

# https://drive.google.com/file/d/1S-5U8eSWxNzXSNftmVctrUD6fRl4oVb3/view?usp=sharing