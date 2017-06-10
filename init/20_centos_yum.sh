#!/bin/bash
# CentOS stuff. Abort if not centos

is_centos || return 1

packages=(
  vim
  git-core
)

if (( ${#packages[@]} > 0 )); then
  e_header "Installing YUM packages: ${packages[*]}"
  for package in "${packages[@]}"; do
    sudo yum install -y "$package"
  done
fi


