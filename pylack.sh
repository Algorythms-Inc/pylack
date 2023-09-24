#!/usr/bin/sh

# helper message for exeptions
__usage="
    USAGE

    pylack <command> [OPTIONS]

    Options:
    -h, --help                   Get the help message (same as this)
    -v, --version                Something something something version

    startproject                 To start a new project.
"


# Check if two arguments are provided
if [ $# -eq 2 ]; then
    if [ "$1" = "startproject" ]; then
        project_name="$2"
        python_script="./pylack/main.py"  # Specify the path to your Python script
        if [ -f "$python_script" ]; then
            echo "Starting the project '$project_name' using '$python_script'..."
            python3 "$python_script" "$project_name"
        else
            echo "Error: Python script not found at '$python_script'."
        fi
    else
        echo "Invalid command: $1. Please use 'startproject' as the first argument."
    fi
else
    echo "Usage: $0 <command> <project_name>"
    echo "Available command: startproject"
fi

