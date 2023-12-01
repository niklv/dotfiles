#!/bin/bash
# clone
git clone --depth 1 https://github.com/altercation/solarized.git
# install
mkdir colors
cd solarized
mv ./vim-colors-solarized/colors ../.vim/colors
cd ..
# clean-up a bit
rm -rf solarized
