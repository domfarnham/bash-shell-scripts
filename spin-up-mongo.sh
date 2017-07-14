#! /bin/sh

# Miscellaneous
B=`tput bold`
N=`tput sgr0`

# Create database store
mkdir /data/db
chmod 775 /data/db

# Download MongoDB and install
cd /tmp
wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-rhel70-3.4.6.tgz
tar zxvfz mongodb-linux-x86_64-rhel70-3.4.6.tgz
mkdir -p /usr/local/mongodb
mv mongodb-linux-x86_64-rhel70-3.4.6/* /usr/local/mongodb

echo "${B}MongoDB${N} has been installed successfully!"
echo "Starting ${B}MongoDB${N} database server"

# Start MongoDB server
cd /usr/local/mongodb/bin
./mongod

