#!/bin/bash
rm -rf crave_rom_builder
git clone https://$GH_TOKEN@github.com/winbo-yml-exe/crave_rom_builder.git
cp -f crave_rom_builder/pull.sh pull.sh
chmod +x pull.sh
crave run --no-patch --clean -- "          #© crave.io Inc. 2017-2024
              #Thanks to UV n Team
        #no dual account just to build faster
              #respect the rule

rm -rf .repo/local_manifests 
git clone https://github.com/winbo-yml-exe/local_manifests -b main .repo/local_manifests
/opt/crave/resync.sh
 
source build/envsetup.sh
lunch lineage_gale-userdebug
m installclean
m gale
"
. pull.sh
