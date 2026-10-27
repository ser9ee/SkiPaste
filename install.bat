@echo off
title Install SkiPaste
echo ===============================================
echo           SkiPaste Installation
echo ===============================================
echo.

set "TARGET_DIR=%AppData%\Microsoft\AddIns"

if not exist "%~dp0SkiPaste.xlam" (
    echo [ERROR] SkiPaste.xlam not found next to this file!
    pause
    exit /b 1
)

if not exist "%TARGET_DIR%" mkdir "%TARGET_DIR%" >nul 2>&1

echo Copying SkiPaste.xlam to AddIns folder...
copy /Y "%~dp0SkiPaste.xlam" "%TARGET_DIR%\" >nul

echo.
echo Installation completed successfully!
echo.
echo To activate:
echo 1. Open Microsoft Excel
echo 2. Go to File ^> Options ^> Add-ins
echo 3. At the bottom, select "Excel Add-ins" and click "Go..."
echo 4. Check "SkiPaste.xlam" and click OK
echo.
echo The SkiPaste tab will appear on the Excel Ribbon.
echo ===============================================
pause
