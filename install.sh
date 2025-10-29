#!/bin/bash

echo "Welcome to Cinit installation. Please enter your name for the copyright notice:"
read -r OWNER_NAME
echo "Thank you, $OWNER_NAME. Setting up Cinit..."

# Create config directory
mkdir -p ~/.config/cinit

# Write config
cat > ~/.config/cinit/cinit.conf << 'EOF'
DEFAULT_LICENSE=MIT
OWNER_NAME="{OWNER_NAME}"
INCLUDE_FILES="Makefile .gitignore LICENSE README.md main.c"
EOF
sed -i "s/{OWNER_NAME}/$OWNER_NAME/g" ~/.config/cinit/cinit.conf

# Copy template structure
cp -r .config/cinit/default ~/.config/cinit/

# Install cinit command
sudo cp cinit /usr/local/bin/cinit
sudo chmod +x /usr/local/bin/cinit

echo "Installation complete!"
echo "Run 'cinit' in any directory to create a new project."

