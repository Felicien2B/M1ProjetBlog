#!/bin/sh
commande="$1"
repertoire_cible="$2"
case "$commande" in
    "build" )
	if [ ! -d "$repertoire_cible" ]
	then mkdir "$repertoire_cible"
	fi
	cp -r images "$repertoire_cible/images"
        echo "Test">"$2/index.html";;
esac
