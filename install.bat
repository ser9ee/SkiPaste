@echo off
chcp 65001 > nul
title Install SkiPaste
echo ===============================================
echo           SkiPaste Installation
echo ===============================================
echo.

set "TARGET_DIR=%AppData%\Microsoft\AddIns"

if not exist "SkiPaste.xlam" (
    echo [ERROR] SkiPaste.xlam not found in this folder!
    pause
    exit /b 1
)

copy /Y "SkiPaste.xlam" "%TARGET_DIR%\"

echo.
echo Successfully copied to: %TARGET_DIR%\SkiPaste.xlam
echo.
echo To activate:
echo 1. Open Microsoft Excel
echo 2. Go to File ^> Options ^> Add-ins
echo 3. At the bottom, select "Excel Add-ins" and click "Go..."
echo 4. Click "Browse...", select SkiPaste.xlam, check the box and click OK
echo.
echo The SkiPaste tab will appear on the Excel Ribbon.
echo ===============================================
pause
