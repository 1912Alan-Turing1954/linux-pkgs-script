#!/usr/bin/env bash

# Function to run a shell script
run_script() {
    bash "$1"
}

# List of shell scripts to run
scripts_to_run=(
    "scripts/remove/remove-pkgs.sh"
    "scripts/remove/kde-remove.sh"
    
)

# Loop through the list and run each script
for script in "${scripts_to_run[@]}"
do
    run_script "$script"
done

