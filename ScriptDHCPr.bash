#!/bin/bash
# declare STRING variable
STRING="Scripts examples"
#print variable on a screen
echo $STRING

#http://www.shellhacks.com/en/Running-Commands-on-a-Remote-Linux-Server-over-SSH

#Static IP Address Assignment
#...

#Install DHCP
ssh -t root@10.0.4.115 << EOF
echo "Install Server DHCP"
sudo apt-get install isc-dhcp-server -y
EOF

#Upload config files
echo "Upload config files" 
scp /home/dhcpd.conf root@10.0.4.115:/etc/dhcp/

#Upload files without root
#scp /home/dhcpd.conf root@10.0.4.115:.
#ssh -t root@10.0.4.113 'echo "copy files";
#sudo cp dhcpd.conf /etc/dhcp/;
#sudo service isc-dhcp-server restart'

#End script
