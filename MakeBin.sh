#!/bin/bash

rm Bin -rf
cd src
make clean
cd ..
./configure
make -j16
mkdir Bin
cd Bin
cp ../src/sample_player .
cp ../src/sample_coach .
cp ../src/coach.conf .
cp ../src/player.conf .
cp ../src/team_logo.xpm .
cp ../Scripts/* .
mkdir lib
cp /usr/local/StarterLibRCSC/lib/* lib -r
chmod 777 *
cd ..
mv Bin binary
tar czvfp binary.tar.gz binary
mv binary Bin
mv binary.tar.gz Bin
