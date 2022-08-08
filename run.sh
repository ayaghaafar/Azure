sudo apt-get install groovy -y
sudo apt-get install unzip
wget https://github.com/jenkinsci/jenkinsfile-runner/releases/download/1.0-beta-30/jenkinsfile-runner-1.0-beta-30.zip
unzip jenkinsfile-runner-1.0-beta-30.zip -d jenkinsfile-runner
chmod -R 777 jenkinsfile-runner
cd /usr/share/jenkins && jar -xvf jenkins.war
export JENKINS_HOME="/usr/share/jenkins/ref/"
export JAVA_OPTS="-Djenkins.model.Jenkins.slaveAgentPort=50000 -Djenkins.model.Jenkins.slaveAgentPortEnforce=true -Dhudson.model.LoadStatistics.clock=1000"
./jenkinsfile-runner/bin/jenkinsfile-runner -w /usr/share/jenkins/ -p /usr/share/jenkins/ref/plugins -f
# wget -q https://github.com/jenkinsci/plugin-installation-manager-tool/releases/download/plugin-management-parent-pom-2.0.0/jenkins-plugin-manager-2.0.0.jar -O jenkins-plugin-manager.jar
# chmod 777 jenkins-plugin-manager.jar
# java -jar jenkins-plugin-manager.jar
# sudo java -jar /home/jenkins/jenkins-cli.jar -s http://localhost:8080 install-plugin http://updates.jenkins-ci.org/download/plugins/git/latest/git.hpi
#./jenkinsfile-runner/bin/jenkinsfile-runner -w jenkins.war -p jenkins_home/plugins -f .
#./jenkinsfile-runner/bin/jenkinsfile-runner -w jenkins.war run
