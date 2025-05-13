#!/bin/bash
# Prints a random happy, motivational message.
# Add to $HOME/.bashrc to have it run automatically when a new terminal is opened!

function print_happy_message {
    local msgs=(
        "Today will be a good day!"
	"Every day is a fresh start!"
	"You're stronger than you think!"
        "You can do this!"
        "I believe in you!"
	"Stay positive!"
        "Yesterday, you said today"
        "Started from the bottom, now you're here!"
	"Good things are coming your way!"
    )

    # Generate a random index
    local length=${#msgs[@]}
    local index=$((RANDOM % length))

    # Print the selected message
    echo "${msgs[$index]}"
}

# Call the function
print_happy_message
