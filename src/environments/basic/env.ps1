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

choco install dotnet3.5
if (Test-PendingReboot) { Invoke-Reboot }

choco install dotnet4.5
if (Test-PendingReboot) { Invoke-Reboot }

choco install -y googlechrome dropbox foxitpdfreader windirstat 7zip visualstudiocode
if (Test-PendingReboot) { Invoke-Reboot }

choco install visualstudio2015community -y
choco install notepadplusplus fiddler4 git sourcetree -y
if (Test-PendingReboot) { Invoke-Reboot }

Install-WindowsUpdate -AcceptEula -GetUpdatesFromMS
if (Test-PendingReboot) { Invoke-Reboot }