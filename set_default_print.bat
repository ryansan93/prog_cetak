@echo off
set str=%~1%
call set str=%%str:,=\%%

rundll32 printui.dll,PrintUIEntry /y /n "%str%"