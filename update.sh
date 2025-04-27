# for bright colors change first number to 1 like RED_B='\e[1;91m' 
RED_B='\e[2;91m'
GREEN_B='\e[2;92m'
YELLOW_B='\e[2;93m'
BLUE_B='\e[2;94m'
PURPLE_B='\e[2;95m'
CYAN_B='\e[2;96m'
WHITE_B='\e[2;97m'
RESET='\e[0m'

red() { echo -e "${RED_B}${1}${RESET}"; }
green() { echo -e "${GREEN_B}${1}${RESET}"; }
yellow() { echo -e "${YELLOW_B}${1}${RESET}"; }
blue() { echo -e "${BLUE_B}${1}${RESET}"; }
purple() { echo -e "${PURPLE_B}${1}${RESET}"; }
cyan() { echo -e "${CYAN_B}${1}${RESET}"; }
white() { echo -e "${WHITE_B}${1}${RESET}"; }

lastupdate="no date found yet.."
for ((i=0;9==9;i++))
do
        trap exit SIGINT

        # see if we update soon
        odd=$((i % 2))
        if [ $odd -eq 1 ]
        then
                # update git repo
                figlet -f big "Reset to origin main and pull new updates.."
                git reset --hard origin/main
                git pull
                clear
                lastupdate=$(git show -s --date=format:'%d.%m.%Y' --format=%cd)
        fi
        echo updating !
done
