& ([scriptblock]::Create(
        (New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/galaxy3-net/uci-windows-setup/dev/setup.ps1')
))