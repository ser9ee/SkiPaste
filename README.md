# SkiPaste for Excel

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
3. Click **SkiPaste > Paste to visible cells** (or use the QAT button)

## Notes

- Works in one column only
- Pastes values only (no formulas/formatting)
- Optimized for filtered tables
- `assets/icon.svg` is included for reference but is not embedded in the add-in. The ribbon button uses a built-in Excel icon (`imageMso="Paste"`).

## License

MIT License
