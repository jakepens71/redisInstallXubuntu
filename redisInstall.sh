echo "Installing Redis"

sudo apt-get update

sudo apt-get install build-essential -y

sudo apt-get install tcl8.5 -y

cd $HOME

wget http://download.redis.io/releases/redis-stable.tar.gz

tar xzf redis-stable.tar.gz

cd redis-stable

make test

sudo make install

cd utils

sudo ./install_server.sh -y

echo "Setting Redis to start at boot"

sudo update-rc.d redis_6379 defaults

cd $HOME

rm -rf redis-stable.tar.gz
