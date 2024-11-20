for ((i=0;true;i++))
do
	trap exit SIGINT
	toilet -w $(tput cols) -f future -F gay "$(cat events.md)" | pv -lqL 10
	sleep 1
	clear
	toilet -w $(tput cols) -f future -F metal "$(cat shopping.md)" | pv -lqL 10
	sleep 1
	clear
	figlet -f future "Reset to origin main and pull new updates.."
	git reset --hard origin/main
	git pull

done

