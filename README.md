# SkiPaste for Excel v0.4

A lightweight Excel add-in that fixes Excel's copy-paste bug when filters are active. It pastes copied column values only into visible cells, skipping hidden rows.

## Download

[Download SkiPaste.zip](https://github.com/ser9ee/SkiPaste/releases/latest/download/SkiPaste.zip) or clone this repository.

## Installation

1. Download and extract the archive.
2. Right-click **SkiPaste.xlam**, select **Properties**, check **Unblock** at the bottom, click **Apply**.
3. Run **install.bat** (copies `SkiPaste.xlam` to Excel's AddIns folder).
4. Open Excel → **File > Options > Add-ins** > Manage: **Excel Add-ins** > **Go...**
5. Click **Browse...**, select **SkiPaste.xlam**, check the box and click **OK**.
6. The **SkiPaste** tab should appear on the Ribbon.

### If the ribbon tab does not appear

The `RunSkiPaste` macro works without the ribbon. Add it to the Quick Access Toolbar:

- Excel → Quick Access Toolbar dropdown → **More Commands**
- Choose **Macros** → select **RunSkiPaste** → click **Add** → **OK**

## Usage

1. Copy a column of values (Ctrl+C)
2. Select the top visible cell in the target column
3. Click **SkiPaste > Paste to visible cells** (or right-click → **SP: Paste to visible cells**, or use the QAT button)

### Hotkey

Press **Ctrl+Shift+S** to run SkiPaste from anywhere in Excel (one left hand).  
The shortcut is active while the add-in is loaded.

## Notes

- Works in one column only
- Pastes values only (no formulas/formatting)
- Optimized for filtered tables
## Version history

- **v0.4** — Context menu item (right-click → "SP: Paste to visible cells"), active sheet validation, non-text clipboard handling
- **v0.3** — 64-bit compatibility (PtrSafe / VBA7), version constant `SKIPASTE_VERSION`
- **v0.2** — Hotkey `Ctrl+Shift+S`, ribbon button screentip/supertip
- **v0.1** — Initial release

## License

MIT License
