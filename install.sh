#! /bin/bash

pacman -Sy git
git clone https://github.com/rosenkranzAusbildung/aconfmgr.git
cd aconfmgr
bash aconfmgr apply
cd ../..
rm -r FunnyOS
