@echo off
chcp 65001 >nul
echo.
echo [92m1. Creation of %~n1.html[0m
echo.
mk4ht htlatex %1 "myconfig" " -cunihtf -utf8"
echo.
echo [92m2. "Cleaning" of %~n1.html[0m
echo.
call cleaning.cmd   %1
exit