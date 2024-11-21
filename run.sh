RED_B='\e[1;91m'
GREEN_B='\e[1;92m'
YELLOW_B='\e[1;93m'
BLUE_B='\e[1;94m'
PURPLE_B='\e[1;95m'
CYAN_B='\e[1;96m'
WHITE_B='\e[1;97m'
RESET='\e[0m'

red() { echo -e "${RED_B}${1}${RESET}"; }
green() { echo -e "${GREEN_B}${1}${RESET}"; }
yellow() { echo -e "${YELLOW_B}${1}${RESET}"; }
blue() { echo -e "${BLUE_B}${1}${RESET}"; }
purple() { echo -e "${PURPLE_B}${1}${RESET}"; }
cyan() { echo -e "${CYAN_B}${1}${RESET}"; }
white() { echo -e "${WHITE_B}${1}${RESET}"; }

for ((i=0;9==9;i++))
do
	trap exit SIGINT
 	red "$(test)"
	red "$(figlet -w $(tput cols) -f bigmono9 "$(cat events.md)")" | pv -lqL 10
 	#toilet -w $(tput cols) -f bigmono9 "$(cat events.md)" | pv -lqL 10
	sleep 3
	clear
	blue "$(figlet -w $(tput cols) -f bigmono9 "$(cat shopping.md)")"
	sleep 3
	clear
	figlet -f future "Reset to origin main and pull new updates.."
	git reset --hard origin/main
	git pull
	clear
done

