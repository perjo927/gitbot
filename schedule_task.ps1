param([string]$path="C:\") 
$gitbot = $path+"gitbot.ps1"
$argument = '-NoProfile -NonInteractive -ExecutionPolicy Bypass -NoExit -command "' +"&{$gitbot -path $path}"
$action = New-ScheduledTaskAction -Execute 'Powershell.exe'`
-Argument $argument
$trigger = New-ScheduledTaskTrigger -Daily -At 6pm
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "GitBot" -Description "Daily GitBot Fun"