mkdir NimiqMiner
cd NimiqMiner
wget https://github.com/tomkha/nq-miner/releases/download/0.99.7/nq-miner-linux-0.99.7.tar.gz -O nq-nimer-linux.zip
mkdir nq-miner
tar -xzvf nq-nimer-linux.zip -C nq-miner
rm nq-nimer-linux.zip
rm ./nq-miner/start_gpu.sh
./nq-miner/nq-miner -t cuda -a "NQ46 VCKD TE08 4PQR 01UL XXDM AM1R DRUN A87S" -n "1" -p pool.acemining.co:8443 &
