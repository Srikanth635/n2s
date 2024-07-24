#!/bin/bash

#roscore &
#roslaunch --wait rvizweb rvizweb.launch &

# Start MongoDB and save data on working directory
MONGODB_URL=mongodb://127.0.0.1:27017
mkdir -p ${PWD}/mongodb/data
mongod --fork --logpath ${PWD}/mongodb/mongod.log --dbpath ${PWD}/mongodb/data

exec "$@"
