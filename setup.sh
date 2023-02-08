BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Display the program header in red
printf "${BRed}"
echo " __   __  _______    ______   _______  _     _  __    _ "
echo "|  | |  ||       |  |      | |       || | _ | ||  |  | |"
echo "|  |_|  ||_     _|  |       ||   _   || || || ||   |_| |"
echo "|       |  |   |    | | |   ||  | |  ||       ||       |"
echo "|_     _|  |   |    | |_|   ||  |_|  ||       ||  _    |"
echo "  |   |    |   |    |       ||       ||   _   || | |   |"
echo "  |___|    |___|    |______| |_______||__| |__||_|  |__|"
echo "CREATED BY UTKARSH BRO"
printf "\n"

# Prompt the user for a YouTube link in green
printf "${BGreen} Paste Youtube link Here:\n"
read -p "link : " link

# Change to the /sdcard directory
cd /sdcard || {
  printf "${BRed}Error: Unable to change to the /sdcard directory.\n"
  exit 1
}

# Download the video
pytube "$link" || {
  printf "${BRed}Error: Unable to download video.\n"
  exit 1
}

# Change back to the home directory
cd $HOME || {
  printf "${BRed}Error: Unable to change to the home directory.\n"
  exit 1
}

# Display a success message in blue
printf "${BBlue}Video has been Downloaded.\n"


