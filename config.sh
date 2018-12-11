# Setup Obsidian directory and config
# txindex=1/0 is for setting specialized indexing; not normally needed
# rpcuser, rpcpassword, rpcport are OPTIONAL... They are for communicating
# with your obsidian VPS remotely or locally.
mkdir -p ~/.obsidian && touch $_/obsidian.conf
config=~/.obsidian/obsidian.conf
echo "server=1" >> $config
echo "txindex=0" >> $config
echo "rpcuser=me" >> $config
echo "rpcpassword=123" >> $config
echo "rpcport=8332" >> $config