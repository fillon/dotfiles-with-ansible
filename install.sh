
echo "Cloning repo to ~/.dotfiles"
git clone git@github.com:nass600/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

echo "Linking dot files ..."
for file in .*; do
  ln -sf "`pwd`/$file" "$HOME/$file"
done

echo "Installing brew apps"
./brew.sh