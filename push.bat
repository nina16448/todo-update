@echo off
cd /d "%~dp0"

if "%~1"=="" (
  echo Usage: push.bat "你的 commit 訊息"
  pause
  exit /b 1
)

git add .
git commit -m "%~1"
git push

pause