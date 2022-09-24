param(
    [Parameter()]
    [String]$MyUser = "uciuser"
)
$PASSWORD = Read-Host -Prompt "Enter Password for $MyUser" -AsSecureString
New-LocalUser -name $MyUser -Password $PASSWORD
Add-LocalGroupMember -Group "Administrators" -Member $MyUser