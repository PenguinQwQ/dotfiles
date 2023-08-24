#!/bin/sh

dotfiles=$(ls -lha $1 | awk '/\./{print $9}' | grep -E '^\.[^\.]+$')

for file in `echo $dotfiles`;
do
	ln -s $1/$file ~/$file
	echo "Symlink ~/$file to $1/$file "
done
