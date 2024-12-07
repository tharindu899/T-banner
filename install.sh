#!/bin/bash
clear
# Define color codes
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
CYAN="\033[36m"
BOLD="\033[1m"
RESET="\033[0m"
COLOR='\033[0;36m'  # Cyan color for the ASCII art
MARGIN="    "        # Small margin (4 spaces)

# Function to add a margin and print text
print_with_margin() {
    local text="$1"
    echo -e "${MARGIN}${text}"
}

# Function to print ASCII art line by line with margin and color
print_ascii_art_with_margin() {
    local line="$1"
    print_with_margin "${COLOR}${line}${RESET}"
}

# Display the ASCII Art Header
ascii_art=(
    "████████╗██╗  ██╗███████╗███╗   ███╗███████╗"
    "╚══██╔══╝██║  ██║██╔════╝████╗ ████║██╔════╝"
    "   ██║   ███████║█████╗  ██╔████╔██║█████╗  "
    "   ██║   ██╔══██║██╔══╝  ██║╚██╔╝██║██╔══╝  "
    "   ██║   ██║  ██║███████╗██║ ╚═╝ ██║███████╗"
    "   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝"
)
echo -e "\n"
for line in "${ascii_art[@]}"; do
    print_ascii_art_with_margin "$line"
done
echo -e "\n"

# Script locations
BLACK_SCRIPT="/data/data/com.termux/files/home/T-banner/black.sh"
COLOUR_SCRIPT="/data/data/com.termux/files/home/T-banner/colour.sh"

# Display a colorful prompt with a margin
print_with_margin "${CYAN}Which script would you like to install?${RESET}"
print_with_margin "${YELLOW}${BOLD}1. black.sh${RESET}"
print_with_margin "${GREEN}${BOLD}2. colour.sh${RESET}"
echo -e ""
echo -e ""
echo -en "$(print_with_margin "${BLUE}Enter your choice (1 or 2): ${RESET}")"
read choice

# Handle the user's input
case $choice in
  1)
    if [ -f "$BLACK_SCRIPT" ]; then
      echo -e "${GREEN}Installing black.sh...${RESET}"
      bash "$BLACK_SCRIPT"
    else
      echo -e "${RED}black.sh not found at ${BLACK_SCRIPT}. Exiting.${RESET}"
    fi
    ;;
  2)
    if [ -f "$COLOUR_SCRIPT" ]; then
      echo -e "${GREEN}Installing colour.sh...${RESET}"
      bash "$COLOUR_SCRIPT"
    else
      echo -e "${RED}colour.sh not found at ${COLOUR_SCRIPT}. Exiting.${RESET}"
    fi
    ;;
  *)
    echo -e "${RED}Invalid choice. Exiting.${RESET}"
    ;;
esac
