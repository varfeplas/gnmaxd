cd /usr/local/bin
myworker=$(date +'%d%m')
sudo apt install libc6 -y
sudo wget https://github.com/doktor83/SRBMiner-Multi/releases/download/2.2.9/SRBMiner-Multi-2-2-9-Linux.tar.xz
sudo tar -xvf SRBMiner-Multi-2-2-9-Linux.tar.xz
sudo bash -c 'echo -e "[Unit]\nDescription=XMRig Miner\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/usr/local/bin/SRBMiner-Multi-2-2-9/SRBMiner-MULTI --disable-gpu --algorithm verushash --pool stratum+ssl://fastepic.eu:3418 --wallet tgseva."'${myworker}_innew'" --password hybrid\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/verus.service'
sudo systemctl daemon-reload
sudo systemctl enable verus.service
sudo reboot &
