#!bin/bash

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

nvm install 11.1.0
nvm alias default 11.1.0
nvm use default
