#!/bin/bash

#verification argument

if [ $# -eq 0 ] ; then

	echo "Il manque les noms d'utilisateur - Fin de script"

	exit 1;

fi

#verification existance utilisateur

for nom in $@ ; do

if

	cat /etc/passwd | grep "$nom" > /dev/null

then 

	echo "l'utilisateur $nom existe déja"

	exit 1

fi

#creation de l'utilisateur

if 

	cat /etc/passwd | grep "$nom" > /dev/null 

then

	#sudo useradd "$nom"  && echo "l'utilisateur $nom à ete cree"

	echo "Erreur a la creation de l'utilisateur $nom"

else

	#echo "Erreur a la creation de l'utilisateur $nom"

	sudo useradd "$nom"  && echo "l'utilisateur $nom à ete cree"	

fi

done

exit 0
