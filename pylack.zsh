#!/usr/bin/zsh -w

# helper message for exeptions
__usage="
    USAGE

    pylack <command> [OPTIONS]

    Options:
    -h, --help                   Something something something help
    -v, --version                Something something something version

    startproject                 To start a new project.
"

# Replace this with the actual path to your main Python script
path="pylack/"

# Check if two arguments are provided
if [ $# -eq 2 ] && [ "$1" = "startproject" ]; then
    project_name="$2"
    cd "$(dirname "$path")"
    activate=`python3 "$path" "$project_name"`
    echo "$activate"
else
    echo "$__usage"
fi
