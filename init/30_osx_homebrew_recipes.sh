# OSX-only stuff. Abort if not OSX.
is_osx || return 1

# Exit if Homebrew is not installed.
[[ ! "$(type -P brew)" ]] && e_error "Brew recipes need Homebrew to install." && return 1

# Homebrew recipes
recipes=(
  ansible
  bash
  git
  git-extras
  htop-osx
  hub
  lesspipe
  nmap
  ssh-copy-id
  tree
  wget

#jespers recipes below
  bash-completion
  cmake
  curl
  nvm
  postgresql
  python3
  shellcheck
  sqlite
  gh
  rbenv
  jq
  k9s
  kubernetes-cli
  helm
  openshift-cli
  mtr
  ncurses
  itermocil
  fish
  starship
  mas
  go
  sops
  age
  1password-cli
)

brew_install_recipes

# Misc cleanup!

# This is where brew stores its binary symlinks
local binroot="$(brew --config | awk '/HOMEBREW_PREFIX/ {print $2}')"/bin

# htop
if [[ "$(type -P $binroot/htop)" ]] && [[ "$(stat -L -f "%Su:%Sg" "$binroot/htop")" != "root:wheel" || ! "$(($(stat -L -f "%DMp" "$binroot/htop") & 4))" ]]; then
  e_header "Updating htop permissions"
  sudo chown root:wheel "$binroot/htop"
  sudo chmod u+s "$binroot/htop"
fi

# bash
if [[ "$(type -P $binroot/bash)" && "$(cat /etc/shells | grep -q "$binroot/bash")" ]]; then
  e_header "Adding $binroot/bash to the list of acceptable shells"
  echo "$binroot/bash" | sudo tee -a /etc/shells >/dev/null
fi
# if [[ false != true | "$(dscl . -read ~ UserShell | awk '{print $2}')" != "$binroot/bash"  ]]; then
#   e_header "Making $binroot/bash your default shell"
#   sudo chsh -s "$binroot/bash" "$USER" >/dev/null 2>&1
#   e_arrow "Please exit and restart all your shells."
# fi

# install nerd-font - https://www.nerdfonts.com/font-downloads
brew tap homebrew/cask-fonts && brew install --cask font-ubuntu-mono-nerd-font
# remember to select the font en iTerm2 under Profile -> Text (size 13)
