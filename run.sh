for ((i=0;9==9;i++))
do
	trap exit SIGINT
	toilet -w $(tput cols) -f bigmono9 -F gay "$(cat events.md)" | pv -lqL 10
	sleep 3
	clear
	toilet -w $(tput cols) -f bigmono9 -F metal "$(cat shopping.md)" | pv -lqL 10
	sleep 3
	clear
	figlet -f future "Reset to origin main and pull new updates.."
	git reset --hard origin/main
	git pull
	clear
done

