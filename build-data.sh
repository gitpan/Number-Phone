#!/bin/sh

# THIS SHELL SCRIPT IS NOT INTENDED FOR END USERS OR FOR PEOPLE INSTALLING
# THE MODULES, BUT FOR THE AUTHOR'S USE WHEN UPDATING THE DATA FROM OFCOM'S
# PUBLISHED DATA.

wget http://www.ofcom.org.uk/telecoms/ioi/numbers/numbers_administered/codelist.zip
unzip codelist.zip
perl build-data.realwork
cat Data.pm temp.db > lib/Number/Phone/UK/Data.pm

# perl -MDBM::Deep -MData::Dumper -e 'print Dumper(DBM::Deep->new("lib/Number/Phone/UK/temp.db"))'>database.txt
rm codelist.zip *txt Data.pm temp.db

