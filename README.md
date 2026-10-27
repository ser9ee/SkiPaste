# SkiPaste for Excel v0.5

Lightweight Excel add-in that fixes the copy-paste bug when filters are active. Pastes copied column values only into visible cells, skipping hidden rows. Supports multi-column paste from clipboard tab-separated data. Adds undo via Ctrl+Z.

### What it does
1. Copy values from any source (Excel cells, web page, text editor)
2. Select the top visible cell in the target column
3. Press **Ctrl+Shift+S** or click **"Paste to visible"** ribbon button (or right-click → **"SP: Paste to visible cells"**)
4. SkiPaste pastes each line into the next visible row, skipping hidden rows. Multi-column data (tab-separated) is pasted into adjacent visible columns.

### Hotkey
Press **Ctrl+Shift+S** to run SkiPaste from anywhere in Excel. Works with one left hand while the add-in is loaded.

### Features
- Works with single or multiple columns
- Pastes values only (no formulas/formatting)
- Optimized for filtered tables
- Ribbon button (tab **SkiPaste**) with tooltip showing the hotkey
- Context menu item **"SP: Paste to visible cells"** on right-click
- Quick Access Toolbar button
- 64-bit compatible (PtrSafe / VBA7)
- Active sheet validation (skips charts, pivot tables, protected sheets)
- Non-text clipboard handling (warns if clipboard has no text)
- Undo via **Ctrl+Z** (restores overwritten values)

### Installation
1. Extract the archive
2. Right-click **SkiPaste.xlam** → **Properties** → check **Unblock** → **OK**
3. Run **install.bat** (copies add-in to Excel's AddIns folder)
4. Open Excel → **File > Options > Add-ins** > Manage: **Excel Add-ins** > **Go...**
5. Click **Browse...**, select **SkiPaste.xlam**, check the box and click **OK**

### Archive contents
- `SkiPaste.xlam` — add-in
- `install.bat` / `install_ru.bat` — install scripts (EN/RU)
- `README.md` / `README.ru.md` — documentation
- `LICENSE` — MIT

## Version history

- **v0.5** — Multi-column paste (tab-separated), undo via Ctrl+Z
- **v0.4** — Context menu item (right-click → "SP: Paste to visible cells"), active sheet validation, non-text clipboard handling
- **v0.3** — 64-bit compatibility (PtrSafe / VBA7), version constant `SKIPASTE_VERSION`
- **v0.2** — Hotkey `Ctrl+Shift+S`, ribbon button screentip/supertip
- **v0.1** — Initial release

## License

MIT License
