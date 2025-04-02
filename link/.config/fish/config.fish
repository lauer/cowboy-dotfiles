# Set aliases
. ~/.config/fish/aliases.fish
. ~/.config/fish/kubectl_aliases.fish

### PATH ###
set -e PATH
set -gx PATH /usr/bin /usr/sbin /bin /sbin

set -gx DISABLE_SPRING true

# Dotfiles
prepend-to-path ~/.dotfiles/bin
# Homebrew
prepend-to-path /usr/local/bin /usr/local/sbin
# Local
prepend-to-path ~/bin
# prepend-to-path ~/.composer/vendor/bin
# x11
# prepend-to-path /usr/x11/bin/

# Use on ubuntu
append-to-path /snap/bin 

append-to-path /opt/homebrew/opt/node@22/bin

append-to-path /opt/homebrew/bin/

append-to-path /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin


# rbenv
status --is-interactive; and type -q rbenv; and source (rbenv init -|psub)

# Iterm2 integration
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# dotfiles
set -x DOTFILES ~/.dotfiles

# Set locale
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8

# Setup k9s configfir
set -gx K9S_CONFIG_DIR {$HOME}/.config/k9s

starship init fish | source


# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f {$HOME}/dev/apps/tmp/test-electron-forge-release/node_modules/tabtab/.completions/electron-forge.fish ]; and . {$HOME}/dev/apps/tmp/test-electron-forge-release/node_modules/tabtab/.completions/electron-forge.fish

