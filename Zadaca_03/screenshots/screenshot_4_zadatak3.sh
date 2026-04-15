#!/bin/bash

if [ ! -d "screenshots" ]; then
    echo "Direktorij screenshots ne postoji."
    exit 1
fi

BROJ=1

for FILE in screenshots/*; do
    if [ -f "$FILE" ]; then
        IME=$(basename "$FILE")
        NOVO_IME="screenshot_"$BROJ"_"$IME
        
        mv "$FILE" "screenshots/"$NOVO_IME
        
        echo "Preimenovano: $IME u $NOVO_IME"
        BROJ=$((BROJ + 1))
    fi
done
