#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Pogreška: Potrebno je proslijediti točno jedan argument."
    exit 1
fi

BROJ=$1

if ! [[ "$BROJ" =~ ^[0-9]+$ ]] || [ "$BROJ" -lt 1 ] || [ "$BROJ" -gt 10 ]; then
    echo "Pogreška: Argument mora biti broj između 1 i 10."
    exit 1
fi

> brojevi.txt

for (( i=1; i<=$BROJ; i++ )); do
    echo "$i" >> brojevi.txt
done

echo "Datoteka brojevi.txt je uspješno kreirana."
