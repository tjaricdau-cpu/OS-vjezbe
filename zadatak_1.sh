#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Pogreška: Potrebno je proslijediti točno 2 argumenta."
    exit 1
fi

PUTANJA=$1
NASTAVAK=$2

if [ ! -d "$PUTANJA" ]; then
    echo "Pogreška: Direktorij $PUTANJA ne postoji."
    exit 1
fi

PRONADJENO=false

for datoteka in "$PUTANJA"/*; do
    if [ -f "$datoteka" ] && [[ "$datoteka" == *"$NASTAVAK" ]]; then
        basename "$datoteka"
        PRONADJENO=true
    fi
done

if [ "$PRONADJENO" = false ]; then
    echo "Nema takvih datoteka s nastavkom $NASTAVAK u direktoriju $PUTANJA."
fi
