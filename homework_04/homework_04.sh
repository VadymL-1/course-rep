#!/bin/bash
sudo useradd bob;
echo 'bob:1' | sudo chpasswd;
sudo usermod -a -G sudo -s /bin/bash bob;
sudo mkdir /home/bob;
sudo chown bob:bob /home/bob;
cd /home/bob;
printf '#!/bin/bash\nsudo hostnamectl set-hostname ubuntu22\n' > change_hostname.sh;
sudo chown bob:bob change_hostname.sh;
sudo chmod 700 change_hostname.sh;
sudo -u bob ./change_hostname.sh;
hostnamectl;
sudo apt update;
sudo apt install nginx -y;
sudo systemctl status nginx --no-pager;
sudo apt install net-tools -y;
sudo netstat -tulpn | grep nginx