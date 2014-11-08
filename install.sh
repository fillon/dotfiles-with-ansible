function title {
	reset="\033[0m"
	yellow="\033[1;33m"
	purple="\033[1;35m"
	echo -e "\n$yellow>>>$purple $1 $reset\n"
}

# Clearing the terminal
clear

# Ask for the administrator password upfront
title "Please, enter your admin password"
sudo -v

# Install xcode terminal tools
title "Installing Xcode command tools"
xcode-select --install

# Installing basic packages
title "Installing Brew and Brew Cask"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask
brew update

title "Installing primary formulas"
brew install git
brew install ansible

# Updating repository
title "Cloning repo to ~/.dotfiles"
if [ -d ~/.dotfiles ]; then
	git clone git@github.com:nass600/dotfiles.git ~/.dotfiles
	cd ~/.dotfiles
else
	cd ~/dotfiles
	git pull origin master
fi

# Installing packages via Ansible
title "Running Ansible playbook"
ansible-playbook ansible/setup.yml

title "Configuring OS X Yosemite"
./.osx