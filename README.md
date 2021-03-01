# uci-windows-setup
Setting up Windows for UCI Cybersecurity Bootcamp

## Install Base Packages

Follow the instructions below for setting up the "UCI Cybersecurity Bootcamp" tools on your Windows desktop or laptop.  If there are errors, Windows sometimes has issues, sometimes there are Internet issues.  If you continue to have issues with the install, watch the following video demonstration.  In that demonstration, I do run into strange Windows problems that seem to just come and go, that's just the way Windows is at time.  Have patience.

If you are running on MacOS, go to the following repostitory for instructions.

#### Now Let's Install

1. Open a Powershell Admin (see example below) ![](Images/Powershell-Start-Admin-50.jpg#thumbnail)
2. When prompted, click Allow to the UAC prompt.
3. Run the following commands in Powershell
~~~~
iwr https://raw.githubusercontent.com/galaxy3-net/uci-windows-setup/dev/setup.ps1 -UseBasicParsing | iex
bash -c "$(curl -s https://raw.githubusercontent.com/galaxy3-net/uci-windows-setup/dev/setup.sh)"
~~~~

That should be it, you should now have the following packages installed on your Windows machine.

1. VSCode (Visual Studio Code)
2. Git
3. Python3
4. Virtualbox
5. Vagrant
6. WinSCP
7. Autopsy
8. IntelliJ Idea
9. GoLand
10. Wireshark
11. Galaxy3

