for ((i=0;i<10;i++))
do
	trap exit SIGINT
	toilet -w $(tput cols) -f future -F gay "$(cat index.md)" | pv -lqL 10
	sleep 1
	clear
	toilet -w $(tput cols) -f future -F metal "$(cat index.md)" | pv -lqL 10
	sleep 1
	clear
	figlet -f future "Reset to origin main and pull new updates.."
	git reset --hard origin/main
	git pull

done

