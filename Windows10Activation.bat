@echo off
Echo Enabling PowerShell RemoteSigned
reg add HKLM\Software\Microsoft\Powershell\1\ShellIds\Microsoft.Powershell /f /v "ExecutionPolicy" /t REG_SZ /d "RemoteSigned"
mkdir C:\Windows10Activation
Pause
Echo Adding Firewall exclusion for "C:\Windows10Activation" dir.
Powershell.exe Add-MpPreference -ExclusionPath "C:\Windows10Activation"
Pause
