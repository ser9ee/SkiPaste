@echo off
chcp 866 > nul
title Установка SkiPaste
echo ===============================================
echo           Установка SkiPaste
echo ===============================================
echo.

set "TARGET_DIR=%AppData%\Microsoft\AddIns"

if not exist "SkiPaste.xlam" (
    echo [ОШИБКА] Файл SkiPaste.xlam не найден в текущей папке!
    pause
    exit /b 1
)

copy /Y "SkiPaste.xlam" "%TARGET_DIR%\"

echo.
echo Файл успешно скопирован в: %TARGET_DIR%\SkiPaste.xlam
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
