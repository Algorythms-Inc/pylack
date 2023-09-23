#!/bin/bash
# Function to check the operating system and return true for Linux, false for Windows
check_os() {
    local os=$(uname -s)
    case "$os" in
        Linux*)   return 0 ;;  # Return 0 for true (Linux)
        Darwin*)  return 0 ;;  # Return 0 for true (macOS)
        *)        return 1 ;;  # Return 1 for false (Windows or any other OS)
    esac
}

$check_os
echo $?