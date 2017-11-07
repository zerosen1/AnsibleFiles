#!/bin/bash
IPaddress=
#scp -o StrictHostKeyChecking=no -i server1.pem -rp resources/Tachyon_a088.zip ubuntu@$IPaddress: 
scp -o StrictHostKeyChecking=no -i server1.pem -rp bashscripts ubuntu@$IPaddress:
ssh -o StrictHostKeyChecking=no -i server1.pem ubuntu@$IPaddress
#ssh -o StrictHostKeyChecking=no -i server1.pem ubuntu@52.14.57.250
#./bashscripts/bashscript.sh
#ubuntu@18.216.133.162:4000
#ubuntu@18.216.105.138:8080
#cd Tachyon/server
#screen
#sudo java -jar TachyonServer.jar
./bashscripts/installation/installation_git.sh