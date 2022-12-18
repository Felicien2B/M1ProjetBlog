#!/bin/sh
commande="$1"
repertoire_cible="$2"
case "$commande" in
    "build" )
	if [ -f index.html ]
	then
		if [ $(cat index.html | grep -o "id=\"images\"" | wc -l) -eq "0" ]
		then echo "L'ID images n'existe pas dans index.html"
		else
		if [ ! -d "$repertoire_cible" ]
		then mkdir "$repertoire_cible"
		fi
		cp -r images "$repertoire_cible"
		cp index.html "$repertoire_cible/index.html"
		html_images=""
		for fichier in images/*
		do
			html_images="$html_images<img src='$fichier'>"
		done
		sed -i "/id=\"images\"/a $html_images" "$repertoire_cible/index.html"
		fi
	else echo "Fichier manquant"
	fi;;
esac
