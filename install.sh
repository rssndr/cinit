#!/bin/bash

# Directory where templates are stored
TEMPLATE_DIR=~/bin/

# Check if template files exist
for file in Makefile .gitignore LICENSE README.md main.c; do
    if [ ! -f "$TEMPLATE_DIR/$file" ]; then
        echo "Error: $file not found in $TEMPLATE_DIR"
        exit 1
    fi
done

# Copy template files
cp "$TEMPLATE_DIR/Makefile" ./Makefile
cp "$TEMPLATE_DIR/.gitignore" ./.gitignore
cp "$TEMPLATE_DIR/main.c" ./main.c
cp "$TEMPLATE_DIR/LICENSE" ./LICENSE
cp "$TEMPLATE_DIR/README.md" ./README.md

# Notify user
echo "C project initialized in $(pwd) with:"
echo "- Makefile"
echo "- .gitignore"
echo "- main.c"
echo "- LICENSE"
echo "- README.md"
echo "Run 'make' to build and 'make run' to execute."

