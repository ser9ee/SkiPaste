# SkiPaste for Excel

A lightweight Excel add-in that fixes Excel's copy-paste bug when filters are active. It pastes copied column values only into visible cells, skipping hidden rows.

## Download

[Download SkiPaste.zip](https://github.com/ser9ee/SkiPaste/releases/latest/download/SkiPaste.zip) or clone this repository.

## Installation

1. Download and extract the archive.
2. Right-click SkiPaste.xlam, select Properties, and check Unblock at the bottom. Click Apply.
3. Run install.bat (will copy the add-in and add the folder to Trusted Locations).
4. Open Excel → File > Options > Add-ins > Manage: Excel Add-ins > Go...
5. Click Browse..., select SkiPaste.xlam, check the box and click OK.
6. The SkiPaste tab will appear on the Ribbon.

## Usage

1. Copy a column of values (Ctrl+C)
2. Select the top visible cell in the target column
3. Click SkiPaste > Paste to visible cells

## Notes

- Works in one column only
- Pastes values only (no formulas/formatting)
- Optimized for filtered tables

## License

MIT License
