#!/bin/sh
# update
apt-get update
apt-get upgrade -y
# fail2ban
apt install fail2ban -y
service fail2ban restart
# firewall installation & configuration
apt install ufw -y
ufw allow ssh
ufw allow http
ufw allow https
ufw enable
# ssh-reload
apt install tcpd -y
service ssh reload
# update
apt-get update
apt-get upgrade -y
# final-message
echo all tools are installed, restart the server to verify the status
# Exit the script
exit 0