$action = New-ScheduledTaskAction -Execute 'Powershell.exe'`
-Argument '-NoProfile -NonInteractive -ExecutionPolicy Bypass -NoExit -command "&{C:\code\gitbot\gitbot\gitbot.ps1 -path C:\code\gitbot\gitbot}'
$trigger = New-ScheduledTaskTrigger -Daily -At 6pm
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "GitBot" -Description "Daily GitBot Fun"