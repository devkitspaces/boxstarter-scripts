##
#
# Boxstarter
#
##

# Windows Configuration
#
# Sets up the windows configuration properties.
Set-WindowsExplorerOptions -EnableShowFileExtensions
Install-WindowsUpdate
Disable-InternetExplorerESC
Disable-UAC
Set-StartScreenOptions -EnableBootToDesktop -EnableDesktopBackgroundOnStart -EnableShowStartOnActiveScreen -EnableShowAppsViewOnStartScreen -EnableSearchEverywhereInAppsView -EnableListDesktopAppsFirst
Set-TaskbarOptions -Size Large -Lock -Dock Bottom
Update-ExecutionPolicy

###
### Installing applications
###
choco install -y chocolatey

# 
# Essentials
#
choco install -y googlechrome foxitreader javaruntime
choco install -y 7zip.install vlc
choco install -y malwarebytes