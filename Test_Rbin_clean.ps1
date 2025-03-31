$Sta = New-ScheduledTaskAction -Execute %Path_to_directory%\clear_task.bat
$Stss = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries
$Stt = New-ScheduledTaskTrigger -Daily -At 7pm
Register-ScheduledTask 'Test Rbin Clean' -Action $Sta -Settings $Stss -Trigger $Stt