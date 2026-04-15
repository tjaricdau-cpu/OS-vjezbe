#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Pogreška: Potrebno je proslijediti točno jedan argument (apsolutnu putanju)."
    exit 1
fi

PUTANJA=$1

if [ ! -d "$PUTANJA" ]; then
    echo "Pogreška: Direktorij na putanji $PUTANJA ne postoji."
    exit 1
fi

if [ ! -d "$PUTANJA/.git" ]; then
    echo "Pogreška: Direktorij nije Git repozitorij (nedostaje .git)."
    exit 1
fi

cd "$PUTANJA"

echo "Informacije o repozitoriju: $PUTANJA" > repozitorij_info.txt
echo "Datum izrade: $(date)" >> repozitorij_info.txt

git add repozitorij_info.txt
git commit -m "Automatski commit: dodana info datoteka"

echo "Ispis Git logova:"
git log --oneline -n 5
