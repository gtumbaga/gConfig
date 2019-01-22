# gConfig
#### These are my various configs, dotFiles, and color themes.

note: this is meant to be cloned to your home directory in ~/gConfig/

This is important becaus the .vimrc file will check and create a symlink form ~/gConfig/g16.vim to ~/.vim/colors/g16.vim if it doesn't exist.


---
## .vimrc and .tmux.conf
Symlink these files from the gConfig dir to your home dir.

## .bashrc_additions
Add this to our .bashrc or .bash_profile file:
```bash
source ~/gConfig/.bashrc_additions
```

## Colors
Please note that the g16.vim color scheme is meant to look with my custom terminal color scheme.
I've included an iterm and terminal (mac) file to import the colors to your terminal.
For windows, I've also included a .minttyrc for Cygwin, and a ConEmu.xml for ConEmu.

![](images/colorSample.png)

At a quick glance, here are the colors used:

| Color Name   |  RGB Value   | HEX Value |
|-------------:|:-------------|:----------|
| Black        |  25,53,73    | #193549   |
| BoldBlack    |  32,62,83    | #203e53   |
| Red          |  255,157,0   | #ff9d00   |
| BoldRed      |  255,201,114 | #ffc972   |
| Green        |  58,217,0    | #3ad900   |
| BoldGreen    |  165,255,144 | #a5ff90   |
| Yellow       |  255,198,0   | #ffc600   |
| BoldYellow   |  255,238,128 | #ffee80   |
| Blue         |  0,136,255   | #0088ff   |
| BoldBlue     |  129,196,255 | #81c4ff   |
| Magenta      |  255,98,140  | #ff628c   |
| BoldMagenta  |  251,148,255 | #fb94ff   |
| Cyan         |  79,115,145  | #4f7391   |
| BoldCyan     |  152,246,247 | #98f6f7   |
| White        |  199,199,199 | #c7c7c7   |
| BoldWhite    |  255,255,255 | #ffffff   |

---

### Windows 10
In my opition, ConEmu is a necessity for me when using WSL (Windows Subsystem Linux).  It ties up a lot of loose ends that the WSL terminal by istelf fails at, like:
 - handing colors correctly
 - using a fallback font for special characters when your chosen monospaced font can't support them
 - provides tabs
 - can be pasted into via ctrl-v (other windows terminal need to paste with right-click.  That sucks, especially when using tmux/vim and don't need the mouse for anything else.
 - probably some more things that I just can't remember right now lol
