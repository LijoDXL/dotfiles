## Dotfiles for work PC (FLASH)

These are dot files configured for Linux PC at work. Some paths in [tmux_conf](.tmux_conf)
and its related theme files have hardcoded file links. Requires [Powerline-patched
fonts](https://github.com/powerline/fonts) to be installed.

* gnome terminal with `oh-my-zsh` and a modified agnoster_theme.
  To apply the theme, copy [agnoster_theme](agnoster.zsh-theme) file from the
  repository to `custom/themes` folder of oh-my-zsh. Terminal profile is set to [nord](https://github.com/arcticicestudio/nord-gnome-terminal)
* dir_color selected to match `solarized-dark` colorscheme
* `nord` theme used in `Tmux` with custom `music ticker` in status bar
* vim colorscheme is `nord`
* workflow utility scripts in [utility_scripts directory](utility_scripts).
  They are symlinked to `/usr/local/bin` with custom names after installing.

