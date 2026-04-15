#!/bin/bash
radni_direktorij=$(pwd)
putanja_do_datoteke="$radni_direktorij/main.sh"
if [ -e "$putanja_do_datoteke" ]; then
echo "Datoteka $putanja_do_datoteke postoji"
else
echo "Datoteka $putanja_do_datoteke ne postoji"
fi
