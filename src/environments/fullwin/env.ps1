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

choco install visualstudio2015community
choco install webessentials2015
if (Test-PendingReboot) { Invoke-Reboot }

choco install mssqlserver2014express
choco install mssqlservermanagementstudio2014express
if (Test-PendingReboot) { Invoke-Reboot }

choco install -y 7zip.install git sourcetree python2 nodejs visualstudiocode notepadplusplus
choco install -y googlechrome firefox
if (Test-PendingReboot) { Invoke-Reboot }