##
# Repeatable, reboot resilient windows environment installations made easy using Chocolatey packages.
# Installed by http://boxstarter.org/package/nr/url?
##

###
### Boxstarter
###

# Windows Configuration
#
# Sets up the windows configuration properties.
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions
Install-WindowsUpdate
Disable-InternetExplorerESC
Disable-UAC
Set-StartScreenOptions -EnableBootToDesktop -EnableDesktopBackgroundOnStart -EnableShowStartOnActiveScreen -EnableShowAppsViewOnStartScreen -EnableSearchEverywhereInAppsView -EnableListDesktopAppsFirst
Set-TaskbarOptions -Size Large -Lock -Dock Bottom
Update-ExecutionPolicy

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

# Development Applications
#
# Installs applications useful for software development.
choco install git.install
choco install visualstudiocode

# .NET Applications
#
# Installs applications specific to .NET Development.
choco install visualstudio2017community