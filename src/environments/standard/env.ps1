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

choco install -y chocolatey
choco install -y googlechrome foxitreader javaruntime
choco install -y 7zip.install vlc
choco install -y malwarebytes