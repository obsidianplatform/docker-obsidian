# Create a temporary folder to download libsodium, another dependency
mkdir ~/tmp
cd ~/tmp

# Download libsodium 1.0.14 into the current tmp directory and unzip it
wget https://download.libsodium.org/libsodium/releases/libsodium-1.0.14.tar.gz
tar -xvzf libsodium-*

# Configure libsodium
cd libsodium*
./configure

# Prepare libsodium to be installed and install it 
# (this takes a little while...)
make
make check
sudo make install
sudo ldconfig

# Cleanup libsodium temporary folder
cd ~
rm -rf tmp/