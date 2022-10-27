#! /bin/bash
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo service sshd restart
source /tmp/user_info.sh
sudo useradd -m $username
sudo echo $username:$password | chpasswd
sudo passwd -e $username