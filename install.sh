
echo "Cloning repo to ~/.dotfiles"
git clone git@github.com:nass600/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

ln -s $PWD/.gitconfig ~/.gitconfig
ln -s $PWD/.bash_profile ~/.bash_profile
ln -s $PWD/.bashrc ~/.bashrc
ln -s $PWD/.bashasliases ~/.bash_aliases