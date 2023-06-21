#!/bin/sh
curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
sudo apt-get update
sudo apt-get -y upgrade
sleep 30
sudo apt install elasticsearch
sleep 60
sudo /bin/su -c "echo vm.max_map_count=262144 >> /etc/sysctl.conf"
sudo sysctl -w vm.max_map_count=262144
sudo systemctl daemon-reload
sudo systemctl start elasticsearch
sudo systemctl enable elasticsearch
sudo cp -pv /home/ubuntu/data-elasticsearch_sources/esConfig/config/elasticsearch.yml /etc/elasticsearch/
sudo /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-smartcn
sudo chmod 777 /usr/share/elasticsearch/
sudo systemctl restart elasticsearch

#latest ubuntu name updated
#version name taken from changelog
#repo pipeline connected with 


