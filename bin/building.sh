# Download Obsidian-QT Git Repo and go to the src/ directory
mkdir ~/github
cd ~/github
git clone https://github.com/obsidianplatform/Obsidian-QT.git obsidian-qt
cd obsidian-qt/src

# Build the obsidian executable file with all processors available
# This will take a *very long time* depending on how many processors
# (CPU cores) you have available...
NPROC=$(nproc)
make -j$NPROC -f makefile.unix

# Finally, we will move the created file into a global folder
sudo cp obsidiand /usr/bin/obsidiand