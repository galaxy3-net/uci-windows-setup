# uci-windows-setup
Setting up Windows for UCI Cybersecurity Bootcamp

### View Setup Demo Videos Here
  1. [Stage I](https://youtu.be/lKh7naJwGt8)
  2. [Stage II](https://youtu.be/TLGMrwu8pIg)

## Create UCIUSER

UCIUSER is the user account used for all classes.

This account will be used to install all Windows packages and run the virtual machines.

1. Using a Windows user account that has administravice rights, do the following.
2. Start a Powershell with Administrative Rights.
3. In the Powershell window run the following command:
~~~~
iwr https://raw.githubusercontent.com/galaxy3-net/uci-windows-setup/dev/New-User.ps1 -UseBasicParsing | iex
~~~~
4. Now that the UCIUSER account has been created, switch user to UCIUSER using the password that you just set.

## Install Base Packages

Now that you are logged into the UCIUSER account, follow the instructions below for setting up the "UCI Cybersecurity Bootcamp" tools on your Windows desktop or laptop.  If there are errors, Windows sometimes has issues, sometimes there are Internet issues.  There is a demonstration video of the installation here: [video demonstration](https://www.youtube.com/watch?v=Mc7-j4RJAGw&feature=youtu.be).  In the video, I do run into some Windows errors, I demonstrate how to work around them.  Have patience!

If you are running on MacOS, go to the following repostitory for instructions.

:Warning: Only MacOS running on x86 architecture is supported.  The M1 architecture does not support x86 virtualization.

#### Now Let's Install

1. Now that you are logged into the UCIUSER account, do the following.
2. Open a Powershell Admin (see example below) ![](Images/Powershell-Start-Admin-50.jpg#thumbnail)
3. When prompted, click Allow/Yes to the UAC prompt.
4. In the same Powershell, run the following commands.
~~~~
iwr https://raw.githubusercontent.com/galaxy3-net/uci-windows-setup/dev/setup.ps1 -UseBasicParsing | iex
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
11. RoyalTS

## Install Galaxy3 Entironment

Now let's install the Galaxy3 virtualization environment.  This is where the virtual machine UCIBOX will run, among others.

1. Be sure that you are logged into the UCIUSER account.
2. Open a Gitbash with Administrative Rights.
3. Run the following command.

~~~~
bash -c "$(curl -s https://raw.githubusercontent.com/galaxy3-net/uci-windows-setup/dev/setup.sh)"
~~~~


## References
[Start and Configure OpenSSH Server](https://docs.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse)