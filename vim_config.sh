#!/bin/bash

echo "\n vim config start...\n"

mkdir -p `pwd`/vim_stuff/vimswap
mkdir -p `pwd`/vim_stuff/vimundo
mkdir -p `pwd`/vim_stuff/vimbackup
mkdir -p `pwd`/vim_stuff/vimviews
mkdir -p `pwd`/vim_stuff/sessions
mkdir -p `pwd`/vim_stuff/viminfos
mkdir -p `pwd`/vim_stuff/bundle

rm -rf ~/.vimswap ~/.vimundo ~/.vimviews ~/.vimbackup

ln -s `pwd`/vim_stuff/vimswap ~/.vimswap
ln -s `pwd`/vim_stuff/vimundo ~/.vimundo
ln -s `pwd`/vim_stuff/vimbackup ~/.vimbackup
ln -s `pwd`/vim_stuff/vimviews ~/.vimviews

rm -rf ~/.vimrc.bundles.local ~/.vimrc.before.local ~/.vimrc.local
ln -s `pwd`/in_bitbucket/myvim/spf13/vimrc.before.local ~/.vimrc.before.local
ln -s `pwd`/in_bitbucket/myvim/spf13/vimrc.bundles.local ~/.vimrc.bundles.local
ln -s `pwd`/in_bitbucket/myvim/spf13/vimrc.local ~/.vimrc.local

mkdir -p ~/bin
ln -s `pwd`/in_bitbucket/myvim/spf13/vim_gen_cscopse_ctags_sessionman.sh ~/bin/

cd `pwd`/in_bitbucket/spf13-vim/
sh spf13-vim.sh

mkdir -p ~/.vim/sessions
mkdir -p ~/.vim/viminfos

echo "\n vim config start...\n"

