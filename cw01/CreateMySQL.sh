#!/bin/sh
# This is a Bash for installing
# MySQL on MacOS by Brew
# Author: Izero0324

# Check current folder
echo "$PWD"

# This script checks if MySQL is installed,
# and if not, attempts to install it using Homebrew.

# Check if MySQL is installed
if mysql --version &>/dev/null; then
    echo "You have installed MySQL"
else
    echo "MySQL is not installed. Attempting to install..."
    # Update Homebrew and Install MySQL
    brew update && brew install mysql
    # After installation, you may want to start MySQL automatically:
    brew services start mysql
    echo "MySQL has been installed and started."
fi
