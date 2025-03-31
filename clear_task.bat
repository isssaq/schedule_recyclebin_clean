@echo off
echo "The task erases files in the Recyclebin"
runas user:#/ "" > null >2>&1
rd /s /q C:\$Recycle.Bin\