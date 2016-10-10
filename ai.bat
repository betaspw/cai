@echo off
if not exist data.txt echo.>data.txt
:settings
title Custom-AI
color 97
:intro
echo Custom-AI was created by Betas.pw
echo Version 1.0
echo Official Custom-AI Website: www.betas.pw/p/c-ai
pause
cls
:begin
set /p text="Say anything: "
for /f "tokens=1,* delims=@" %%i in (data.txt) do (
  if /i "%text%"=="%%i" (
   echo A.I. says: %%j
   goto begin
  )
)
echo --- I don't understand.
set /p answer=--- Tell me what would be a good answer to '%text%'? 
echo %text%@%answer%>>data.txt
echo --- I'll try to remember :)
cls
goto begin