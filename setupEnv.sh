#!bin/bash

sudo apt install -y git

# Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo add-apt-repository ppa:webupd8team/atom
sudo apt update

# Essential things
sudo apt install -y atom google-chrome-stable bless curl python3 python3-pip
sudo pip install virtualenv

mkdir ~/.virtualenvs
mkdir ~/.scripts/

cp ~/.gdbinit ~
cp ./beautify.sh ~/.scripts
cp ./utility.sh ~/.scripts

echo "source ~/.scripts/utility.sh
source ~/.scripts/beautify.sh" >> ~/.bashrc

echo "1) Please run nvm script to install nvm"
echo "2) Please source bashrc file again"
echo "3) Please install burpsuite"
echo "4) Please run venv add virtual environment then add: PIL, numpy"
echo "Maybe install IDA?"
