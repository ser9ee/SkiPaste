<p align="center">
  <img src="assets/icon.svg" alt="SkiPaste Logo" width="150">
</p>

<h1 align="center">SkiPaste for Excel 🚀</h1>

<p align="center">
  <i>A lightweight, industrial-grade Excel add-in that fixes a 20-year-old Microsoft bug.</i>
</p>

---

Standard Excel built-in copy-paste fails when filters are active: it copies only visible rows but pastes data continuously, overwriting hidden cells and messing up your table. **SkiPaste forces Excel to bypass hidden rows and paste long columns of data strictly into visible cells.**

## Why SkiPaste? 🌟
* **Blazing Fast:** Uses memory blocks (SpecialCells and Areas) instead of slow row-by-row loops. It injects thousands of rows in milliseconds.
* **100% Free & Open Source:** No subscriptions, no hidden fees, and fully transparent code.
* **Ultra-Lightweight:** Tiny footprint (just ~15 KB), doesn't lag Excel startup, and contains no ads.
* **Native UI Integration:** Automatically injects a custom **SkiPaste** tab directly into your Excel Ribbon via built-in XML. No manual toolbar tweaking required.
* **Smart Installer:** Packaged with a lightweight script for seamless installation.

---

## How it works 🛠️

1. Copy your source data column (**Ctrl + C**) from Excel, Notepad, or any database.
2. Select the top visible destination cell.
3. Click the **SkiPaste** button on your new Ribbon tab. Done!

---

## Installation (Windows) 💻

> **⚠️ Important:** Before installing, right-click the downloaded .zip archive or the .xlam file, select **Properties**, and check the **""Unblock""** box at the bottom. This is required for Excel to trust the macros!

1. Download or clone this repository.
2. Double-click **install.bat** to safely copy the add-in to your system directory.
3. Open Excel, go to File -> Options -> Add-ins. At the bottom, select Excel Add-ins and click **Go...**.
4. Click **Browse**, select the SkiPaste.xlam file (it's already in the AddIns folder), check the box next to **SkiPaste**, and click OK.
5. The new **SkiPaste** tab will instantly appear on your Excel Ribbon!

---

# Описание на русском языке 🇷🇺

Оптимизированная надстройка для Excel, которая исправляет один из самых раздражающих багов корпорации Microsoft.

При включенном фильтре стандартная вставка Ctrl + V вставляет данные сплошным массивом, затирая скрытые ячейки и ломая структуру таблицы. **SkiPaste автоматически анализирует геометрию листа, находит скрытые строки и физически перешагивает через них, записывая данные строго в видимый диапазон.**

## Главные преимущества:
* **Молниеносная скорость:** Вместо медленного поштучного перебора ячеек, скрипт считывает открытые области пачками (Areas) и производит блочную запись напрямую в оперативную память. Скорость в десятки раз выше аналогов.
* **Интеграция в Ленту (Ribbon):** Благодаря кастомной XML-структуре внутри плагина, после активации в вашем Excel сама появится вкладка **SkiPaste**. Ничего настраивать вручную не нужно.
* **Удобный инсталлятор:** В комплекте идет безопасный .bat файл, который сам скопирует файлы в системную папку Office.
* **Никакого мусора:** Плагин весит всего около 15 КБ, не замедляет запуск Excel и не содержит рекламы.

## Установка (Инструкция для русскоязычных)
> **⚠️ Важно:** Перед установкой нажмите правой кнопкой мыши на скачанный файл (.xlam), выберите **Свойства** и поставьте галочку **«Разблокировать»** внизу. Иначе Excel заблокирует макросы!

1. Скачайте этот репозиторий (зеленая кнопка Code -> Download ZIP).
2. Запустите **install.bat** — он скопирует надстройку в системную папку.
3. Откройте Excel. Нажмите Файл -> Параметры -> Надстройки.
4. Внизу окна в выпадающем списке выберите **«Надстройки Excel»** и нажмите **«Перейти»**.
5. Нажмите **«Обзор»**, найдите файл SkiPaste.xlam и выберите его. Поставьте галочку и нажмите ОК.
6. Готово! Новая вкладка **SkiPaste** появится на верхней ленте.

## Ограничения:
* Переносятся только значения (без формул и форматирования цвета/границ).
* Предназначен для быстрой и надежной работы в один столбец.

---

## License / Лицензия 📄
This project is licensed under the MIT License. You are free to use, modify, and distribute it. 
*(Этот проект распространяется под лицензией MIT. Вы можете свободно использовать, изменять и распространять его.)*

## Author
Developed for optimizing daily data workflows and improving Excel automation.

<p align="center">
  <b>Give this repository a ⭐ if it saved your time and money!</b>
</p>
