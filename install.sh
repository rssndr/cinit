#!/bin/bash

# Create the target directories
mkdir -p ~/.config/cinit

cp -r .config/cinit/cinit.conf ~/.config/cinit/
cp -r .config/cinit/default ~/.config/cinit/
cp -r .config/cinit/templates ~/.config/cinit/

# TODO:
# Create and copy the cinit script
echo "#!/bin/bash" > cinit
echo "echo 'Cinit script placeholder - to be implemented'" >> cinit
chmod +x cinit
sudo cp cinit /usr/local/bin/cinit
sudo chmod +x /usr/local/bin/cinit

# Cleanup
rm cinit

# Notify completition
echo "Installation complete. You can now run 'cinit' from any directory."
echo "Templates and config are stored in ~/.config/cinit/."

