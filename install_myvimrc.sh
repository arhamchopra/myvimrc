#!/bin/sh
# Save all previous vimrc related stuff with the ".bck" extension
echo "mv ~/.vimrc ~/.vimrc_bck"
echo
echo
mv ~/.vimrc ~/.vimrc.bck

echo "mv ~/.vim ~/.vim_bck"
echo
echo
mv ~/.vim ~/.vim.bck

PATH=$(pwd)
echo $PATH
echo
echo

# Softlink the new vimrc files to HOME
echo "ln -s $PATH/.vim ~/.vim"
echo
echo
ln -s $PATH/.vim ~/.vim

echo "ln -s $PATH/.vimrc ~/.vimrc"
echo
echo
ln -s $PATH/.vimrc ~/.vimrc

echo "Your vim config files(if they existed) have been moved to their corresponding .bck extensions"
echo
echo
echo "Do run the < :PlugInstall > command, when you start up vim for the first time."
echo
echo
