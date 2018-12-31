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

| Color Name   |  RGB Value   |
|-------------:|:-------------|
| Black        |  25,53,73    |
| BoldBlack    |  32,62,83    |
| Red          |  255,157,0   |
| BoldRed      |  255,201,114 |
| Green        |  58,217,0    |
| BoldGreen    |  165,255,144 |
| Yellow       |  255,198,0   |
| BoldYellow   |  255,238,128 |
| Blue         |  0,136,255   |
| BoldBlue     |  129,196,255 |
| Magenta      |  255,98,140  |
| BoldMagenta  |  251,148,255 |
| Cyan         |  79,115,145  |
| BoldCyan     |  152,246,247 |
| White        |  199,199,199 |
| BoldWhite    |  255,255,255 |

---

### Windows 10
In my opition, ConEmu is a necessity for me when using WSL (Windows Subsystem Linux).  It ties up a lot of loose ends that the WSL terminal by istelf fails at, like:
 - handing colors correctly
 - using a fallback font for special characters when your chosen monospaced font can't support them
 - provides tabs
 - can be pasted into via ctrl-v (other windows terminal need to paste with right-click.  That sucks, especially when using tmux/vim and don't need the mouse for anything else.
 - probably some more things that I just can't remember right now lol
