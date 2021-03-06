
#alias kk="K=$(cdk && pwd);echo $K;"
# function _kgProjects(){
#   echo "stackedit amp content-store metadata-store missing-link xml-toolbox gitifier kg-site kg-site-assets kg-pipeline"
# }
# alias karnovUpdate="C=$(pwd);cdk; pwd; for f in $(_kgProjects); do cd \$f; pwd; git fetch; cd -; done;cd \$C"

# EDITOR update for bundler
export BUNDLER_EDITOR=atom

# lang settings, view with `locale` or `locale -a`
# export LANG=da_DK.UTF-8
export LANG=en_US.UTF-8

# oracle instantclient via homebrew
#
export OCI_DIR="$(brew --prefix)/lib"
# see http://www.rubydoc.info/github/kubo/ruby-oci8/master/file/docs/install-on-osx.md
# AND when downloading manually the zip files into `~/Downloads`:
# `export HOMEBREW_CACHE=$HOME/Downloads/``
