#!/bin/sh
commande="$1"
repertoire_cible="$2"
case "$commande" in
    "build" )
	if [ -f index.html ]
	then
		if [ ! -d "$repertoire_cible" ]
		then mkdir "$repertoire_cible"
		fi
		cp -r images "$repertoire_cible"
		cp index.html "$repertoire_cible/index.html"
	else echo "Fichier manquant"
	fi;;
esac
