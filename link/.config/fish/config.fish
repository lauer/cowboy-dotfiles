# Set aliases
. ~/.config/fish/aliases.fish

### PATH ###
set default_path /usr/bin /usr/sbin /bin /sbin
set path_x11 /usr/x11/bin/
set homebrew /usr/local/bin /usr/local/sbin
set privat ~/bin ~/.composer/vendor/bin

set -gx PATH $privat $homebrew $default_path $path_x11

# rvm default

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# dotfiles
set -x DOTFILES ~/.dotfiles

# Set locale
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8
