# Install xcode terminal tools
echo "Installing Xcode command tools"
xcode-select --install

# Installing basic packages
echo "Installing Brew and Brew Cask"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask
brew update

echo "Installing primary formulas"
brew install git
brew install ansible


echo "Cloning repo to ~/.dotfiles"
if [ -d ~/.dotfiles ]; then
	git clone git@github.com:nass600/dotfiles.git ~/.dotfiles
fi
cd ~/.dotfiles

echo "Running Ansible playbook"
ansible-playbook ansible/setup.yml