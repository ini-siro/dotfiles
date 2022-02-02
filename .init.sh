# install HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# brew update & cleanup
brew update
brew upgrade
brew cleanup

# installing tools with brew
brew bandle

# set fish as the default shell
sudo sh -c "echo '/opt/homebrew/bin/fish' >> /etc/shells"
chsh -s /opt/homebrew/bin/fish

# get this dotfiles repository
ghq get git@github.com:ini-siro/dotfiles.git
eval "cd $(ghq root)/github.com/ini-siro/dotfiles"

cat hello.txt