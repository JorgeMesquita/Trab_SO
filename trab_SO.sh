#!/bin/bash
# Script leitura e restauração de imagem

imagenspc=`ls /Users/jorge/Desktop/imagens/*.png`
echo "\n Espere, estamos procurando suas imagens...\n"
> trabalho_SO/imagens.txt
for image1 in $imagenspc
do
	echo $image1
	echo $image1 | cut -f 1 -d '.' >> trabalho_SO/imagens.txt
done
echo "\n**********************"
echo "Imagens lidas e salvas!"
echo "************************\n"

imagenspc=`ls /Users/jorge/Desktop/trabalho_SO/imagens.txt`
echo "\n Espere, estamos restaurando suas imagens...\n"
cont=1
while read line; 
do
	echo "$line.png"
	cont=$((cont+1))
done < $imagenspc
echo "\n********************"
echo " Imagens restauradas "
echo "**********************\n"

