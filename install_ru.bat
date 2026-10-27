@echo off
chcp 1251 > nul
title Установка SkiPaste
echo ===============================================
echo           Установка SkiPaste
echo ===============================================
echo.

set "TARGET_DIR=%AppData%\Microsoft\AddIns"

if not exist "%~dp0SkiPaste.xlam" (
    echo [ОШИБКА] Файл SkiPaste.xlam не найден рядом с этим bat-файлом!
    pause
    exit /b 1
)

if not exist "%TARGET_DIR%" mkdir "%TARGET_DIR%" >nul 2>&1

echo Копирование SkiPaste.xlam в папку надстроек...
copy /Y "%~dp0SkiPaste.xlam" "%TARGET_DIR%\" >nul

echo.
echo Установка завершена успешно!
echo.
echo Для активации:
echo 1. Откройте Microsoft Excel
echo 2. Перейдите Файл ^> Параметры ^> Надстройки
echo 3. Внизу выберите "Надстройки Excel" и нажмите "Перейти..."
echo 4. Поставьте галочку напротив "SkiPaste.xlam" и нажмите ОК
echo.
echo Вкладка SkiPaste появится на ленте Excel.
echo ===============================================
pause
