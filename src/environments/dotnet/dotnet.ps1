$Boxstarter.RebootOk=$true
$Boxstarter.NoPassword=$false
$Boxstarter.AutoLogin=$true

Enable-RemoteDesktop

Disable-InternetExplorerESC
Disable-UAC

Update-ExecutionPolicy Unrestricted
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions -EnableShowFullPathInTitleBar
Set-TaskbarOptions -Size Small -Lock -Dock Bottom

Install-WindowsUpdate -AcceptEula
if (Test-PendingReboot) { Invoke-Reboot }

###
### Boxstarter
###

###
### Installing applications
###
choco install chocolatey

# Standard Applications
#
# Installs common applications that are used by users.
choco install vlc
choco install 7zip.install
choco install putty.install
choco install googlechrome
if (Test-PendingReboot) { Invoke-Reboot }

# Development Applications
#
# Installs applications useful for software development.
choco install git.install
choco install visualstudiocode
if (Test-PendingReboot) { Invoke-Reboot }

# .NET Applications
#
# Installs applications specific to .NET Development.
choco install visualstudio2017community
if (Test-PendingReboot) { Invoke-Reboot }