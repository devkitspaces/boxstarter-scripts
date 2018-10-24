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

choco install -y 
choco install -y 7zip.install git sourcetree python2 nodejs visualstudiocode notepadplusplus
choco install -y googlechrome firefox

Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula