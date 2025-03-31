# schedule_recyclebin_clean
Register schedule task to empty recycle bin with PowerShell
<h2>A template how to set schedule task for cleaning recycle bin</h2>

<p>NOTE: Make sure to change "%Path_to_directory%", "%Path_to_script%" to directory's path where declare_task.ps1 and scheduled_task.bat is saved.</p>

You can set a specific time and/or additional conditions to start this task with command "New-ScheduledTaskTrigger"

<h2>Optional method:</h2>
The variant is differ from those that use (remove_recyclebin script) by executing simple command "rd" that used for removing a folder's content.
To register the script as a scheduled task, PowerShell cmdlets "New-ScheduledTask.." were used in file "Test_Rbin_clean.ps1". In the example, additional time settings were applied with cmdlet "New-ScheduledTaskTrigger -Daily -At 7pm".
<h1>Comparing implementation between these methods:</h1>
First method rely on remove_recyclebin script, which provides:
User validation: prompt user to confirm the task "yes or no";
List content of recycle bin (fiel name, date of modification and type);
Optional method doesn't support a validation check, it waits until user press enter button (3rd line of clear_task.bat);
