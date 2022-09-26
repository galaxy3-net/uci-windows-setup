# uci-windows-setup
Setting up Windows for UCI Cybersecurity Bootcamp

> ---
> WARNING
> If you are performing these activities in a live class over Zoom. It is advisable to connect to Zoom via your mobile device to stay in communication with the teaching staff if you run into any problems.
> --- 

Overview of Steps
- [ ] Log into Zoom on Mobile Device (if live class)
- [ ] Stage I - Create the UCIUSER & Install Tools
- [ ] &nbsp; &nbsp; &nbsp;Create the UCIUSER Account
- [ ] &nbsp; &nbsp; &nbsp;Switch User to UCIUSER Account
- [ ] &nbsp; &nbsp; &nbsp;Connect to Class Zoom
- [ ] &nbsp; &nbsp; &nbsp;Permanently Change the Zoom Username from UCIUSER to your Firstname Lastname
- [ ] &nbsp; &nbsp; &nbsp;Log into the Class Slack
- [ ] &nbsp; &nbsp; &nbsp;Install Windows Packages
- [ ] Stage II - Install the Galaxy3 Environment
- [ ] &nbsp; &nbsp; &nbsp;Configure Galaxy 3 Environment
- [ ] &nbsp; &nbsp; &nbsp;Startup UCIBOX
- [ ] &nbsp; &nbsp; &nbsp;Connect to UCIBOX via GitBash
- [ ] &nbsp; &nbsp; &nbsp;Startup RoyalTS, Connect to UCIBOX via SSH

### View Setup Demo Videos Here
  1. [Stage I](https://youtu.be/lKh7naJwGt8)
  2. [Stage II](https://youtu.be/TLGMrwu8pIg)

## Stage I - Create the UCIUSER & Install Tools

### Create UCIUSER

UCIUSER is the user account used for all classes.

This account will be used to install all Windows packages and run the virtual machines.

Steps
===
1. [ ] Open your favorite password manager. 
2. [ ] Create, Enter, and Save UCIUSER password.
3. [ ] Using a Windows user account that has administrive rights, do the following.
4. [ ] Start a Powershell with Administrative Rights.
5. [ ] In the Powershell window run the following command:

~~~~
& ([scriptblock]::Create((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/galaxy3-net/uci-windows-setup/dev/New-User.ps1')))
~~~~
4. [ ] When prompted for a password, enter the password stored in step 2.
5. [ ] Now that the UCIUSER account has been created, switch user to UCIUSER using the password that you just set.


***Do NOT continue until you have switched to the UCIUSER account***

### Connect to Zoom ###

Now that we have created the UCIUSER account, we should reconnect to the class Zoom.
1. [ ] Logged in as UCIUSER
2. [ ] Startup Edge Browser
3. [ ] [Open Canvas on Boot Camp Spot](https://courses.bootcampspot.com/)
4. [ ] Open your course and click on the Zoom link.
5. [ ] If your Zoom name appears as **UCIUSER**, change it to your Firstname Lastname

### Enroll Slack in the UCIUSER Account ###

You may have already registered Slack using another account on your computer, we need to also register it with the UCIUSER account so that you have Slack access during class.

1. [ ] Store your class Slack credentials in your favorite password manager if you have not already done so.
2. [ ] [Join our class Slack with UCIUSER](https://join.slack.com/t/ucivirtcyberp-7r72493/shared_invite/zt-1g6m1g9uf-QIjdxcvdl095Y8K56RfWVQ)
3. [ ] Using the same credentials used in your original registration.

### Install Base Packages

Now that you are logged into the UCIUSER account, follow the instructions below for setting up the "UCI Cybersecurity Bootcamp" tools on your Windows desktop or laptop.  If there are errors, Windows sometimes has issues, sometimes there are Internet issues.  There is a demonstration video of the installation here: [video demonstration](https://www.youtube.com/watch?v=Mc7-j4RJAGw&feature=youtu.be).  In the video, I do run into some Windows errors, I demonstrate how to work around them.  Have patience!

If you are running on MacOS, go to the following repostitory for instructions.

:Warning: Only MacOS running on x86 architecture is supported.  The M1 architecture does not support x86 virtualization.

#### Now Let's Install

1. [ ] Now that you are logged into the UCIUSER account, do the following.
2. [ ] Open a Powershell Admin (see example below) ![](Images/Powershell-Start-Admin-50.jpg#thumbnail)
3. [ ] When prompted, click Allow/Yes to the UAC prompt.
4. [ ] In the same Powershell, run the following commands.
~~~~
iwr https://raw.githubusercontent.com/galaxy3-net/uci-windows-setup/dev/setup.ps1 -UseBasicParsing | iex
~~~~

That should be it, you should now have the following packages installed on your Windows machine.

1. [ ] VSCode (Visual Studio Code)
2. [ ] Git
3. [ ] Python3
4. [ ] Virtualbox
5. [ ] Vagrant
6. [ ] WinSCP
7. [ ] Autopsy
8. [ ] IntelliJ Idea
9. [ ] GoLand
10. [ ] Wireshark
11. [ ] RoyalTS

## Stage II: Install Galaxy3 Environment

Now let's install the Galaxy3 virtualization environment.  This is where the virtual machine UCIBOX will run, among others.

1. Be sure that you are logged into the UCIUSER account.
2. Open a Gitbash with Administrative Rights.
3. Run the following command.

~~~~
bash -c "$(curl -s https://raw.githubusercontent.com/galaxy3-net/uci-windows-setup/dev/setup.sh)"
~~~~


## References
[Start and Configure OpenSSH Server](https://docs.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse)
~~~~
iwr https://raw.githubusercontent.com/galaxy3-net/uci-windows-setup/dev/New-User.ps1 -UseBasicParsing | iex
~~~~
