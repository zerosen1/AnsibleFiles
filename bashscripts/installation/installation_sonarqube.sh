#!/bin/bash
#sonarqube install:
wget https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-6.0.zip
unzip sonarqube-6.0.zip
sudo mv sonarqube-6.0 /opt/sonar
#modify:
sudo vi /opt/sonar/conf/sonar.properties

sonar.jdbc.username=sonar
sonar.jdbc.password=sonar
sonar.jdbc.url=jdbc:mysql://localhost:3306/sonar?useUnicode=true&characterEncoding=utf8&rewriteBatchedStatements=true&useConfigs=maxPerformance
sonar.web.host=127.0.0.1
sonar.web.context=/sonar
sonar.web.port=9000

#start sonaqube server
cd /opt/sonar/bin/linux-x86-64/
sudo ./sonar.sh start 
sudo ./sonar.sh restart
sudo ./sonar.sh stop