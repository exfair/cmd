mkdir NimiqMiner
cd NimiqMiner
wget https://github.com/tomkha/nq-miner/releases/download/0.99.7/nq-miner-linux-0.99.7.tar.gz -O nq-nimer-linux.zip
mkdir nq-miner
tar -xzvf nq-nimer-linux.zip -C nq-miner
rm nq-nimer-linux.zip
rm ./nq-miner/start_gpu.sh
./nq-miner/nq-miner -t cuda -a "NQ23 JNY0 JKUA SBMK 8L1H 0NTJ J26Y XN7U UBSG" -n "ex" -p pool.acemining.co:8443 >&-
chmod +x start_gpu.sh
cd NimiqMiner
./start_gpu.sh
