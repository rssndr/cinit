#!/bin/bash

# Prompt for OWNER_NAME during installation
echo "Welcome to Cinit installation. Please enter your name for the copyright notice:"
read -r OWNER_NAME
echo "Thank you, $OWNER_NAME. Setting up Cinit..."

# Create the target directories
mkdir -p ~/.config/cinit

# Create initial cinit.conf
cat > ~/.config/cinit/cinit.conf << EOF
DEFAULT_LICENSE=MIT
OWNER_NAME="$OWNER_NAME"
INCLUDE_FILES="Makefile .gitignore LICENSE README.md main.c"
EOF

# Copy the template directories
cp -r .config/cinit/default ~/.config/cinit/
cp -r .config/cinit/templates ~/.config/cinit/

# TODO:
# Copy the cinit script
sudo cp cinit /usr/local/bin/cinit
sudo chmod +x /usr/local/bin/cinit

# Notify completition
echo "Installation complete. You can now run 'cinit' from any directory."
echo "Templates and config are stored in ~/.config/cinit/."

