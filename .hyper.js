// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    // choose either `'stable'` for receiving highly polished,
    // or `'canary'` for less polished but more frequent updates
    updateChannel: 'stable',

    // default font size in pixels for all tabs
    fontSize: 13,

    // font family with optional fallbacks
    fontFamily: '"Hack", "Roboto Mono Light for Powerline", "Roboto Mono Light", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',

    // default font weight: 'normal' or 'bold'
    fontWeight: 'lighter',

    // font weight for bold characters: 'normal' or 'bold'
    fontWeightBold: 'normal',

    // line height as a relative unit
    lineHeight: 0.9,

    // letter spacing as a relative unit
    letterSpacing: 0.6,

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(255,198,0,0.75)',

    // terminal text color under BLOCK cursor
    cursorAccentColor: '#000',

    // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorShape: 'BLOCK',

    // set to `true` (without backticks and without quotes) for blinking cursor
    cursorBlink: true,

    // color of the text
    foregroundColor: '#cccccc',

    // terminal background color
    // opacity is only supported on macOS
    backgroundColor: '#012456',

    // terminal selection color
    selectionColor: 'rgba(255,198,0,0.3)',

    // border color (window, tabs)
    borderColor: '#cccccc',

    // custom CSS to embed in the main window
    css: `
      nav.tabs_nav {
        top: 0;
        width: calc(100vw - 180px);
        background: rgba(0,0,0,0.4);
        margin-left: 50px;
        box-sizing: border-box;
        height: 20px;
        border-right: solid 1px #fff;
        border-left: solid 1px #fff;
      }
      nav ul.tabs_list {
        max-height: 20px;
      }
      nav ul.tabs_list .tab_text {
        height: 20px;
        line-height: 20px;
      }
      nav ul.tabs_list .tab_text.tab_textActive {
        background: #012456;
      }
      .tab_tab .tab_icon {
        top: 2px;
      }
      .terms_terms {
        margin-top: 22px;
      }
      .header_windowHeader,
      .header_windowControls
      {
        height: 20px;
      }
      .header_shape {
        padding-top: 0px;
        padding-bottom: 0px;
        height: 20px;
      }

      .header_appTitle {
        display: none;
      }
      .header_windowHeader {
        width: 128px;
        left: auto;
        right: 1px;
      }
    `,

    // custom CSS to embed in the terminal window
    termCSS: '',

    // if you're using a Linux setup which show native menus, set to false
    // default: `true` on Linux, `true` on Windows, ignored on macOS
    showHamburgerMenu: '',

    // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS
    showWindowControls: '',

    // custom padding (CSS format, i.e.: `top right bottom left`)
    padding: '0px 4px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: '#000000',
      red: '#ff9d00',
      green: '#3ad900',
      yellow: '#ffc600',
      blue: '#1b94ff',
      magenta: '#ff628c',
      cyan: '#5a9da5',
      white: '#cccccc',
      lightBlack: '#123567',
      lightRed: '#ffc972',
      lightGreen: '#a5ff90',
      lightYellow: '#ffee80',
      lightBlue: '#8ecaff',
      lightMagenta: '#fb94ff',
      lightCyan: '#98f6f7',
      lightWhite: '#ffffff'
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    //
    // Windows
    // - Make sure to use a full path if the binary name doesn't work
    // - Remove `--login` in shellArgs
    //
    // Bash on Windows
    // - Example: `C:\\Windows\\System32\\bash.exe`
    //
    // PowerShell on Windows
    // - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
    shell: 'C:\\Windows\\System32\\wsl.exe',

    // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // by default `['--login']` will be used
    shellArgs: ['~'],

    // for environment variables
    env: {},

    // set to `false` for no bell
    bell: 'SOUND',

    // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
    copyOnSelect: false,

    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,

    // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
    // selection is present (`true` by default on Windows and disables the context menu feature)
    // quickEdit: true,

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],

  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  },
};
