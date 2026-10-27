@echo off
chcp 866 > nul
title Установка SkiPaste
echo ===============================================
echo           Установка SkiPaste
echo ===============================================
echo.

set "TARGET_DIR=%AppData%\Microsoft\AddIns"
set "REG_KEY=HKCU\Software\Microsoft\Office\16.0\Excel\Security\Trusted Locations\SKIPASTE"

if not exist "SkiPaste.xlam" (
    echo [ОШИБКА] Файл SkiPaste.xlam не найден в текущей папке!
    pause
    exit /b 1
)

echo [1/2] Копирование SkiPaste.xlam в папку надстроек...
copy /Y "SkiPaste.xlam" "%TARGET_DIR%\" > nul

echo [2/2] Добавление папки в Доверенные расположения...
reg add "%REG_KEY%" /v Path /t REG_SZ /d "%TARGET_DIR%\" /f > nul
reg add "%REG_KEY%" /v Description /t REG_SZ /d "SkiPaste Add-in" /f > nul
reg add "%REG_KEY%" /v AllowSubfolders /t REG_DWORD /d 1 /f > nul

echo.
echo Установка успешно завершена!
echo.
echo Для активации:
echo 1. Откройте Microsoft Excel
echo 2. Нажмите Файл ^> Параметры ^> Надстройки
echo 3. Внизу выберите "Надстройки Excel" и нажмите "Перейти..."
echo 4. Нажмите "Обзор...", выберите SkiPaste.xlam, поставьте галочку и нажмите ОК
echo.
echo На ленте Excel появится вкладка SkiPaste
echo ===============================================
pause
