for ((i=0;i<10;i++))
do
	toilet -w $(tput cols) -f future -F gay "$(cat index.md)" | pv -lqL 10
	sleep 1
	clear
done

