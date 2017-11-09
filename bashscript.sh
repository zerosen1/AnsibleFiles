#!/bin/bash
IPaddress=52.14.57.250
root=ubuntu

#scp -o StrictHostKeyChecking=no -i server1.pem -rp bashscripts $root@$IPaddress:
#scp -o StrictHostKeyChecking=no -i server1.pem -rp playbooks/apache/apache.yml $root@$IPaddress:
#scp -o StrictHostKeyChecking=no -i server1.pem -rp resources/tomcat.conf $root@$IPaddress:
ssh -o StrictHostKeyChecking=no -i server1.pem $root@$IPaddress


#sudo ansible-playbook apache.yml
#ubuntu / centos
#apachetomcat.hopto.org
#ssh -i server1.pem ubuntu@52.14.57.250
#./bashscripts/bashscript.sh
#ubuntu@18.216.133.162:4000
#ubuntu@18.216.51.134:8080
#cd Tachyon/server
#screen
#sudo java -jar TachyonServer.jar
#./bashscripts/installation/installation_git.sh

#scp -o StrictHostKeyChecking=no -i server1.pem -rp resources/Tachyon_a088.zip ubuntu@$IPaddress: 

#./bashscripts/installation/installation_java.sh
#./bashscripts/installation/installation_tomcat.sh
#./bashscripts/installation/installation_ansible.sh