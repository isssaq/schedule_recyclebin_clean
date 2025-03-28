# schedule_recyclebin_clean
Register schedule task to empty recycle bin with PowerShell
<h2>A template how to set schedule task for cleaning recycle bin</h2>

<p>NOTE: Make sure to change "%Path_to_directory%", "%Path_to_script%" to directory's path where declare_task.ps1 and scheduled_task.bat is saved.</p>

You can set a specific time and/or additional conditions to start this task with command "New-ScheduledTaskTrigger"
