#!/bin/sh
commande="$1"
repertoire_cible="$2"
case "$commande" in
    "build" )
        echo "Test">"$2/index.html";;
esac
