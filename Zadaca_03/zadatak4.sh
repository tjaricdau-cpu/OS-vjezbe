#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Pogreška: Potrebno je proslijediti samo jedan argument."
    exit 1
fi

DIR_NAME=$1

if [ ! -d "$DIR_NAME" ]; then
    echo "Pogreška: Direktorij $DIR_NAME ne postoji u trenutnom direktoriju."
    exit 1
fi

zip -j svi_zapisi.zip "$DIR_NAME"/*

echo "Sve datoteke iz $DIR_NAME su komprimirane u svi_zapisi.zip."
