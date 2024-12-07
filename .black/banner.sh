#!/usr/bin/bash

# Function to move the cursor to a specific position
PUT() { 
  echo -en "\033[${1};${2}H";  # Move the cursor to row ${1}, column ${2}
}

# Function to hide the cursor
HIDECURSOR() { 
  echo -en "\033[?25l";  # Hide the terminal cursor
}

# Function to restore the cursor to normal visibility
NORM() { 
  echo -en "\033[?12l\033[?25h";  # Show the cursor and return to normal mode
}

# Hide the cursor and clear the screen
HIDECURSOR
clear

# Get terminal width dynamically
terminal_width=$(tput cols)

# Set box width to a fixed size or a fraction of terminal width
box_width=$(( terminal_width - 3))

# Create a line with the width of the box (subtract 2 for the borders)
border=$(printf '─%.0s' $(seq 1 $((box_width))))

# Set your name as the custom banner text
name="Creator"  # Change this to your desired name

# Set color to bright magenta
echo -e "\033[35;1m"

# Draw the top border
echo "┌${border}┐"

# Draw sides of the box with proper alignment
for ((i=1; i<=8; i++)); do
  printf "│%-${box_width}s│\n"  ""  # Empty content inside the box
done

# Draw the bottom border
echo "└${border}┘"

# Generate the figlet output and calculate its height
figlet_output=$(figlet -f ASCII-Shadow -w ${box_width} "${name}")

# Split figlet output into lines for correct vertical placement
IFS=$'\n'  # Set the Internal Field Separator to new line
figlet_lines=($(echo "$figlet_output"))

# Get the number of lines in the figlet output
figlet_height=${#figlet_lines[@]}

# Calculate the starting row for centering
start_row=$(( (12 - figlet_height) / 2 + 2 ))  # Centering within the box

# Print each line of the figlet output
for line in "${figlet_lines[@]}"; do
  line_length=${#line}
  padding=$(( (box_width - line_length) / 2 ))  # Center the line
  PUT $start_row $((padding + 3))  # Adjusting for the left border
  echo "$line" | lolcat
  ((start_row++))  # Move to the next line for the next figlet output
done

# Position "Boot Script 2.0" text on the right side of the box
PUT $(( 2 + 8 )) $(( terminal_width - 20 ))  # Adjusted to avoid overlap with the right border
echo -e "\e[32mBoot Script \e[33m2.0\e[0m"  # Green and yellow text

# Reset terminal cursor to normal visibility
PUT $(( start_row + 2 )) 0
echo

# Restore the cursor
NORM

