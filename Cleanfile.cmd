@echo off
PowerShell.exe -Command "Set-ExecutionPolicy -ExecutionPolicy UnRestricted -Scope CurrentUser"
PowerShell.exe -Command "Unblock-File C:\Users\PhysicsLab\Downloads\Cleanfile.ps1"
PowerShell.exe -Command "C:\Users\PhysicsLab\Downloads\Cleanfile.ps1"