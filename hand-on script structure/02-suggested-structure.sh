#!/bin/bash
set -e

variabila_1=8
variabila_2="Ion"

echo "$variabila_2 are $variabila_1 mere."

read -p "Vrei sa ii mai dai mere lui $variabila_2? [da/nu]: " decizie
echo "Ai decis: $decizie"

case "$decizie" in
    da)
        read -p "Cate mere ii vei da in plus? [numar]: " nr_mere
        
        if [[ "$nr_mere" =~ ^[0-9]+$ ]]; then
            mere_noi=$((variabila_1 + nr_mere))
            echo "Acum $variabila_2 are $mere_noi mere."
        else
            echo "Trebuie sa introduci un numar valid."
            exit 1
        fi
        ;;
        
    nu)
        echo "Acum $variabila_2 are $variabila_1 mere."
        ;;
        
    *)
        echo "Input invalid. Programul se inchide."
        exit 1
        ;;
esac
