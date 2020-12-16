@echo off
Echo Enabling PowerShell RemoteSigned
reg add HKLM\Software\Microsoft\Powershell\1\ShellIds\Microsoft.Powershell /f /v "ExecutionPolicy" /t REG_SZ /d "RemoteSigned"
mkdir C:\Windows10Activation
Pause
cls
Echo Adding AV exclusion for "C:\Windows10Activation" dir.
Powershell.exe Add-MpPreference -ExclusionPath "C:\Windows10Activation"
Pause
cls
Echo Extracing Windows10Activation contents to "C:\Windows10Activation"
Powershell.exe Expand-Archive -Force "E:\Windows10Activation\ActivateWindows10.zip" "C:\Windows10Activation"
pause
cls
C:\Windows10Activation\ActivateWindows10.bat