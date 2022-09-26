param(
    [Parameter()]
    [String]$MyUser = "uciuser"
)
$PASSWORD = Read-Host -Prompt "Enter Password for $MyUser" -AsSecureString
New-LocalUser -name $MyUser -Password $PASSWORD
Add-LocalGroupMember -Group "Administrators" -Member $MyUser

$SourceFile = "https://raw.githubusercontent.com/galaxy3-net/uci-windows-setup/dev/files/Phase-I.ps1"
iwr -Uri $SourceFile -OutFile "C:\Users\Public\Desktop\Phase-I.ps1"

$SourceFile = "https://raw.githubusercontent.com/galaxy3-net/uci-windows-setup/dev/files/UCI-Cybersecurity.html"
Invoke-WebRequest -Uri $SourceFile -OutFile "C:\Users\Public\Desktop\UCI-Cybersecurity.html"