# xrdp-brew-formulas

this repository provides brew formulas (build scripts) for easy instsallation of xrdp on macOS.

# SYNOPSIS

```sh
# install xrdp (development version)
$ HOMEBREW_NO_INSTALL_FROM_API=1 brew install --build-from-source --verbose --HEAD ./xrdp/xrdp-git.rb

# start service
sudo brew services start xrdp-git

# uninstall xrdp
$ brew uninstall xrdp-git
```

# AUTHOR

- Gyuhwan Park★ <unstabler@unstabler.pl>


