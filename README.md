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
Please note that the g16.vim color scheme is meant to look good with my custom terminal color scheme.
I've included an iterm and terminal (mac) file to import the colors to your terminal.
For windows, I've also included a .minttyrc for Cygwin, and a ConEmu.xml for ConEmu.


### gBaltGrayBG
gBaltGrayBG is my newest color scheme.  I changed the background to a gray, but a lighter color as to not combat the contrast of bright white screens when I'm looking at other windows, and updated some of the other colors to give more of a constrast between light and dark alternatives of a givven color, as well as make them easier to see on the gray background.
I also changed back to the utilization of a terminal background color that is separate from the 16 specified ANSI colors.

Here are the colors used:

![](images/colorSample-grayBG.png)

| GUI   Color   |  RGB Value   | HEX Value
|--------------:|:-------------|:----------|
| Foreground    |  187,187,187 | #bbbbbb   |
| Background    |  81,81,81    | #515151   |
| Bold          |  255,255,255 | #ffffff   |
| Selection     |  255,198,0   | #ffc600   |
| Selected Text |  0,0,0       | #000000   |
| Cursor        |  255,198,0   | #ffc600   |

| ANSI Color   |  RGB Value   | HEX Value |
|-------------:|:-------------|:----------|
| Black        |  0,0,0       | #000000   |
| BoldBlack    |  92,92,92    | #5c5c5c   |
| Red          |  255,157,0   | #ff9d00   |
| BoldRed      |  255,201,114 | #ffc972   |
| Green        |  58,217,0    | #a5ff90   |
| BoldGreen    |  165,255,144 | #c5ffc6   |
| Yellow       |  255,198,0   | #ffc600   |
| BoldYellow   |  255,238,128 | #ffee80   |
| Blue         |  110,187,255 | #6ebbff   |
| BoldBlue     |  178,219,255 | #b2dbff   |
| Magenta      |  255,98,140  | #ff628c   |
| BoldMagenta  |  251,148,255 | #fb94ff   |
| Cyan         |  90,157,165  | #5a9da5   |
| BoldCyan     |  152,246,247 | #98f6f7   |
| White        |  187,187,187 | #bbbbbb   |
| BoldWhite    |  255,255,255 | #ffffff   |

---

### gBaltAltBG
gBaltAltBG is my 2nd newest color scheme.  I changed the background blue, and slightly updated some of the other colors to make them easier to see on the new bg blue.
I also changed back to the utilization of a terminal bg color that is seperate from the 16 specified ANSI colors.

Here are the colors used:

![](images/colorSample-Alt.png)

| GUI   Color   |  RGB Value   | HEX Value
|--------------:|:-------------|:----------|
| Foreground    |  204,204,204 | #cccccc   |
| Background    |  1,36,86     | #012456   |
| Bold          |  255,255,255 | #ffffff   |
| Selection     |  255,198,0   | #ffc600   |
| Selected Text |  0,0,0       | #000000   |
| Cursor        |  255,198,0   | #ffc600   |

| ANSI Color   |  RGB Value   | HEX Value |
|-------------:|:-------------|:----------|
| Black        |  0,0,0       | #000000   |
| BoldBlack    |  18,53,103   | #123567   |
| Red          |  255,157,0   | #ff9d00   |
| BoldRed      |  255,201,114 | #ffc972   |
| Green        |  58,217,0    | #3ad900   |
| BoldGreen    |  165,255,144 | #a5ff90   |
| Yellow       |  255,198,0   | #ffc600   |
| BoldYellow   |  255,238,128 | #ffee80   |
| Blue         |  27,148,255  | #1b94ff   |
| BoldBlue     |  144,202,255 | #8ecaff   |
| Magenta      |  255,98,140  | #ff628c   |
| BoldMagenta  |  251,148,255 | #fb94ff   |
| Cyan         |  90,157,165  | #5a9da5   |
| BoldCyan     |  152,246,247 | #98f6f7   |
| White        |  204,204,204 | #cccccc   |
| BoldWhite    |  255,255,255 | #ffffff   |

---


### gBalt (my old one)
![](images/colorSample.png)

Here are the colors used:

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
**UPDATE**
I now use the new Windows Terminal.  Below is how I used to feel about conEmu, but the new Terminal can do all of the below listed, plus more (including ligature support).  I have also changed pasting to shift-ctrl-v, because ctrl-v is used by linux/vim already


---
In my opinion, ConEmu is a necessity for me when using WSL (Windows Subsystem Linux).  It ties up a lot of loose ends that the WSL terminal by itself fails at, like:
 - handing colors correctly
 - using a fall back font for special characters when your chosen monospaced font can't support them
 - provides tabs
 - can be pasted into via ctrl-v (other windows terminal need to paste with right-click.  That sucks, especially when using tmux/vim and don't need the mouse for anything else.
 - probably some more things that I just can't remember right now lol
