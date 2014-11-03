
echo "Cloning repo to ~/.dotfiles"
git clone git@github.com:nass600/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

ln -s $PWD/.gitconfig ~/.gitconfig