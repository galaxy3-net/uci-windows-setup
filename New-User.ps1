$UCIUSER = "uciuser"
$PASSWORD = Read-Host -Prompt "Enter Password for $UCIUSER" -AsSecureString
New-LocalUser -name $UCIUSER -Password $PASSWORD
Add-LocalGroupMember -Group "Administrators" -Member $UCIUSER