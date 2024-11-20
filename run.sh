for ((i=0;9==9;i++))
do
	trap exit SIGINT
	toilet -w $(tput cols) -f future -F gay "$(cat events.md)" | pv -lqL 10
	sleep 2
	clear
	toilet -w $(tput cols) -f future -F metal "$(cat shopping.md)" | pv -lqL 10
	sleep 2
	clear
	figlet -f lean "Reset to origin main and pull new updates.."
	git reset --hard origin/main
	git pull

done

