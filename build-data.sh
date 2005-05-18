#!/bin/sh

# THIS SHELL SCRIPT IS NOT INTENDED FOR END USERS OR FOR PEOPLE INSTALLING
# THE MODULES, BUT FOR THE AUTHOR'S USE WHEN UPDATING THE DATA FROM OFCOM'S
# PUBLISHED DATA.

rm -rf lib/Number/Phone/UK
mkdir -p lib/Number/Phone/UK
(
    cd lib/Number/Phone/UK
    wget http://www.ofcom.org.uk/telecoms/ioi/numbers/numbers_administered/codelist.zip
    unzip codelist.zip
    perl ../../../../build-data.pl
    rm codelist.zip *txt
)
