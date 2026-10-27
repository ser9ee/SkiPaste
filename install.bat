@echo off
title Install SkiPaste
echo ===============================================
echo           SkiPaste Installation
echo ===============================================
echo.

set "TARGET_DIR=%AppData%\Microsoft\AddIns"
set "REG_KEY=HKCU\Software\Microsoft\Office\16.0\Excel\Security\Trusted Locations\SKIPASTE"

if not exist "SkiPaste.xlam" (
    echo [ERROR] SkiPaste.xlam not found in this folder!
    pause
    exit /b 1
)

echo [1/2] Copying SkiPaste.xlam to AddIns folder...
copy /Y "SkiPaste.xlam" "%TARGET_DIR%\" > nul

echo [2/2] Adding folder to Trusted Locations...
reg add "%REG_KEY%" /v Path /t REG_SZ /d "%TARGET_DIR%\" /f > nul
reg add "%REG_KEY%" /v Description /t REG_SZ /d "SkiPaste Add-in" /f > nul
reg add "%REG_KEY%" /v AllowSubfolders /t REG_DWORD /d 1 /f > nul

echo.
echo Installation completed successfully!
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
