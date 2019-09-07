#!/bin/bash -eu

cd /home/isucon/torb/webapp/go && make

sudo systemctl stop torb.go
sudo systemctl stop h2o
sudo systemctl stop mariadb

# ログ消す
sudo rm -f /var/log/mariadb/mariadb.log
sudo rm -f /var/log/mariadb/slow.log
sudo rm -f /var/log/h2o/access.log
sudo rm -f /var/log/h2o/error.log

sudo systemctl daemon-reload

sudo systemctl start mariadb
sudo systemctl start h2o
sudo systemctl start torb.go
