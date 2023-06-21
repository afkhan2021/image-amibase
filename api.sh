#!/bin/sh
# cd /home/ubuntu
# sudo apt install -y npm
# sudo npm install pm2 -g
# sudo pm2 startup
#sudo env PATH=$PATH:/usr/bin /usr/local/lib/node_modules/pm2/bin/pm2 startup systemd -u ubuntu --hp /home/ubuntu


#              "cd node-restapi/", "./install-server.sh", "sleep 90",
#              "sudo PORT=3002 ROOT_URL=http://api.holyquran.site ESHOST=localhost:9201 pm2 -f start src/bin/www -i max", 
#              "sudo pm2 save"
#"./export_es.sh 9201", "sleep 60"

#
#,
# {
#   "type": "shell",
#   "inline": ["cd /home/ubuntu", 
#               "git clone git@gitlab.com:hqvc/node-restapi.git", 
#               "cd node-restapi/", "./install-server.sh", "sleep 90",
#               "sudo PORT=3002 ROOT_URL=http://api.holyquran.site ESHOST=localhost:9201 pm2 -f start src/bin/www -i max", "sudo pm2 save"],
#               "valid_exit_codes" : "1"
# } 