# schedule_recyclebin_clean
Register schedule task to empty recycle bin with PowerShell
<h2>A template how to set schedule task for cleaning recycle bin</h2>

First method:
<ul>
  <li>remove_recyclebin.ps1. Custom script, implement the removing of bin's content</li>
  <li>scheduled_task.bat. Refers to script for executing the task</li>
  <li>declare_task.ps1. Script of schedule task registration</li>    
</ul>

<p>NOTE: Make sure to change "%Path_to_directory%", "%Path_to_script%" to directory's path where declare_task.ps1 and scheduled_task.bat is saved.</p>

You can set a specific time and/or additional conditions to start this task with command "New-ScheduledTaskTrigger"

<h2>Optional method:</h2>
The variant is differ from those that use (remove_recyclebin script) by executing simple command "rd" that used for removing a folder's content.
To register the script as a scheduled task, PowerShell cmdlets "New-ScheduledTask.." were used in file "Test_Rbin_clean.ps1". In the example, additional time settings were applied with cmdlet "New-ScheduledTaskTrigger -Daily -At 7pm".
<ul>
  <li>clear_task.bat. Another approach of execution</li>
  <li>Test_Rbin_clean.ps1. Script of schedule task registration </li>
</ul>

<h2>Comparing implementation between these methods:</h2>
First method rely on remove_recyclebin script, which provides:
<ul>
  <li>User validation: prompt user to confirm the task "yes or no";</li> 
  <li>List content of recycle bin (fiel name, date of modification and type); </li>
</ul>
Optional method doesn't support a confirmation, it waits until user press enter button (3rd line of clear_task.bat);
