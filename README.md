## Dotfiles for work PC (FLASH)

These are dot files configured for Linux PC at work. Some paths in .tmux_conf
and its related theme files have hardcoded file links.Requires [Powerline-patched
fonts](https://github.com/powerline/fonts)

* terminal is Oh-my-Zsh with modified agnoster_theme. To apply the theme, copy
  [agnoster.zsh-theme](agnoster_theme) file from the repository to custom/themes
  folder of Oh-my-Zsh. Gnome terminal profile is set to [nord](https://github.com/arcticicestudio/nord-gnome-terminal)
* dir_color selected to match solarized-dark colorscheme
* nord theme used in Tmux with custom `music ticker` in status bar
* vim colorscheme is nord
* workflow utility scripts in [utility_scripts directory](utility_scripts).
  They are symlinked to /usr/local/bin with custom names after installing.

