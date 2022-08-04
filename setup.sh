clear
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White
printf "${BRed}"
echo
echo	" __   __  _______    ______   _______  _     _  __    _ "
echo	"|  | |  ||       |  |      | |       || | _ | ||  |  | |"
echo	"|  |_|  ||_     _|  |       ||   _   || || || ||   |_| |"
echo	"|       |  |   |    | | |   ||  | |  ||       ||       |"
echo	"|_     _|  |   |    | |_|   ||  |_|  ||       ||  _    |"
echo	"  |   |    |   |    |       ||       ||   _   || | |   |"
echo    "  |___|    |___|    |______| |_______||__| |__||_|  |__|"
echo "CREATED BY UTKARSH BRO"
printf "\n"
printf "${BGreen} Paste Youtube link Here:\n"
echo link:-
read link
cd /sdcard
pytube "$link"  
cd $HOME
printf "${BBlue}Video has been Downloaded into /sdcard successfully."

