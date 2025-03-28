$Sta = New-ScheduledTaskAction -Execute %Path_to_directory%\scheduled_task.bat
$Stss = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries
Register-ScheduledTask "Clean recyclebin" -Action $Sta -Settings $Stss
