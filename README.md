# It Thougts neovim

### It's fork from https://github.com/AlariCode/purpleschool-neovim

# Uninstall

## Linux / Macos (unix)

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf  ~/.local/state/nvim 
rm -rf  ~/.cache/nvim 
```

### Windows

```bash
rd -r ~\AppData\Local\nvim
rd -r ~\AppData\Local\nvim-data
```

# Install

## Linux / Macos

```bash
git clone https://github.com/Dev-cmyser/It-Thougts-neovim ~/.config/nvim
```

### Windows

```bash
git clone https://github.com/Dev-cmyser/It-Thougts-neovim $HOME\AppData\Local\nvim
```

#### if the above path doesnt work, try any of these paths :

```bash
%LOCALAPPDATA%\nvim
```

```bash
%USERPROFILE%AppDataLocal\nvim
```

```bash
C:Users%USERNAME%AppDataLocal\nvim
```

# Usage
## Open files 
use "w" or "o" or Enter


![image](https://github.com/Dev-cmyser/It-Thougts-neovim/assets/105227884/1a8915a9-2b6a-4f11-a653-c9eaecd8d1cd)


**Default Hotkeys Overview:**

1. **NeoTree**: 
    - `Space + e`: Opens NeoTree on the left
    - `Space + o`: Shows the git status in a floating NeoTree.
2. **Navigation**:
    - The control keys combined with `h`, `j`, `k`, and `l` switch between vim windows.
    - `Space + /`: A quick toggle for commenting out lines.
3. **Window Splits**:
    - `|`: Vertical split.
    - `\`: Horizontal split.
4. **Others**:
    - `Space + w`: Save current file.
    - `Space + c`: Close the current buffer and shift to the one on the right.
    - `Space + x`: Close all buffers but not current
    - `Space + s`: Show current file place in Tree.
    - `jj` in Insert mode: Quick escape to normal mode.
    - `Space + h`: Clear search highlights.
5. **Buffer Navigation**:
    - `Tab`: Cycles to the next buffer and reveals NeoTree.
    - `Shift + Tab`: Cycles to the previous buffer and reveals NeoTree.
    - `Shift + H` and `Shift + L`: Also cycles through buffers and reveals NeoTree.
6. **Terminal**:
    - `F7`: Toggles terminal in floating mode. ( open and close )
7. **Telescope**:
    - `Space + f + f`: Find file by name (without gitignore)
    - `Space + f + w`: Find text in files (without gitignore)





