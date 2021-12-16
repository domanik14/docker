#!/bin/bash
for i in {1..10}
do
	if [ $i -lt 10 ]
	then
		if [[ -d "/root/0$i" ]]
		then
    			echo "Existe el directorio."
		else
			echo "No existe el directorio"
		fi
	else
		if [[ -d "/root/$i" ]]
		then
    			echo "Existe el directorio."
		else
			echo "No existe el directorio"
		fi
	fi
done

