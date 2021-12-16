#!/bin/bash
#RichardDomanikClarkson
if [[ $1 != "" ]]
then
	docker start $1
	docker cp check_folders.sh $1:/
	docker exec $1 ./check_folders.sh
	docker exec $1 rm ./check_folders.sh
	docker stop $1
else echo "No existe el contenedor"
fi
