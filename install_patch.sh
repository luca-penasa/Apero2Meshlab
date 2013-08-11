#!/bin/sh

MICMAC_SOURCE_DIR='' #set it to the right path example (or pass it as arg): 
#MICMAC_SOURCE_DIR='/home/luca/Code/culture3d'

SCRIPT_DIR=$(pwd)





if [[ "$MICMAC_SOURCE_DIR" == "" && "$1" == "" ]] 
then
echo "Modfiy this script the right way before to run it! or at least pass as argument the path of culture3d source!"
exit
fi

if [ "$MICMAC_SOURCE_DIR" == "" ]; then
MICMAC_SOURCE_DIR=$1 
fi

if [ ! -d "$MICMAC_SOURCE_DIR" ]; then
echo "the directory of micmac source does not exists!"
exit	
fi


if [[ $@ == **-r** ]]
then
echo "Removing patches and files from dir $MICMAC_SOURCE_DIR"
cd $MICMAC_SOURCE_DIR
patch -R -p1 <$SCRIPT_DIR/patchset.patch 
rm $MICMAC_SOURCE_DIR/src/uti_files/CPP_Apero2Meshlab.cpp
rm $MICMAC_SOURCE_DIR/src/CBinaires/Apero2Meshlab.c
exit
fi


echo "Copying files"

echo "CPP_Apero2Meshlab.cpp into $MICMAC_SOURCE_DIR/src/uti_files/" 
cp CPP_Apero2Meshlab.cpp $MICMAC_SOURCE_DIR/src/uti_files/CPP_Apero2Meshlab.cpp

echo "Apero2Meshlab.c into $MICMAC_SOURCE_DIR/src/CBinaires/" 
cp Apero2Meshlab.c $MICMAC_SOURCE_DIR/src/CBinaires/Apero2Meshlab.c

echo "Patching other files"
cd $MICMAC_SOURCE_DIR
patch -p1 <$SCRIPT_DIR/patchset.patch 




