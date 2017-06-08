# Set aliases
. ~/.config/fish/aliases.fish

### PATH ###
set -e PATH
set -gx PATH /usr/bin /usr/sbin /bin /sbin

# Dotfiles
append-to-path ~/.dotfiles/bin
# Homebrew
append-to-path /usr/local/bin /usr/local/sbin
# Local
append-to-path ~/bin
append-to-path ~/.composer/vendor/bin
# x11
append-to-path /usr/x11/bin/

# rbenv
status --is-interactive; and type -q rbenv; and source (rbenv init -|psub)

# Iterm2 integration
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# dotfiles
set -x DOTFILES ~/.dotfiles

# Set locale
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8
