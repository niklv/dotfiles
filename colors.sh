#!/bin/bash
# clone
git clone --depth 1 https://github.com/altercation/solarized.git
# install
mkdir colors
cd solarized
mv ./intellij-colors-solarized ../colors/intellij
mv ./iterm2-colors-solarized ../colors/iterm2
mv ./osx-terminal.app-colors-solarized ../colors/osx-terminal
mv ./vim-colors-solarized/colors ../../.vim/colors
cd ..
# clean-up a bit
rm -rf solarized
