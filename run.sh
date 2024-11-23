#!/bin/bash
export GH_TOKEN=$(cat gh_token.txt)
#gh auth login --with-token $GH_TOKEN
cd /crave-devspaces
mkdir -p AlphaDroid-
rm -rf crave_rom_builder
git clone https://$GH_TOKEN@github.com/winbo-yml-exe/crave_rom_builder.git
cp -f crave_rom_builder/run1.sh run1.sh
chmod +x run1.sh
cp -f crave_rom_builder/craverun.sh AlphaDroid-
./run1.sh
