#!/usr/bin/zsh

__usage="
USAGE

pylack <command> [OPTIONS]

Options:
  -h, --help                   Something something something help
  -v, --version                Something something something version

  startproject                 To start a new project.
"

# path to main python executable script
path = "./pylack/main.py"
main_script=$(dirname "$path")

# Check if two arguments are provided
if [ $# -eq 2 ] && [ "$1" = "startproject" ]; then
    project_name="$2"
    activate=$(python3 $main_script "$project_name")
    echo "$activate"
else
    echo "$__usage"
fi
