#!/bin/sh

# https://apple.stackexchange.com/questions/117644/how-can-i-list-my-open-network-ports-with-netstat/117648#117648

# lsof -i -P | grep -i "listen"
netstat -atp tcp | grep -i "listen"
