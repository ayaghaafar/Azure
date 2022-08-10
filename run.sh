sudo apt-get install groovy -y
sudo apt-get install unzip
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian/jenkins.io.key
sudo apt-get update -qq
sudo apt-get install Jenkins
sudo apt-get install Jenkins-lts
sudo service start Jenkins
# jenkins-plugin-cli --plugins configuration-as-code-groovy:1.1
sudo apt install default-jdk
java – jar jenkins-cli.jar –s http://localhost:8080/ enable-plugin configuration-as-code-groovy:1.1
jar jenkins-cli.jar  -s http://localhost:8080/ -auth admin:password groovy = < Jenkinsfile
# wget https://github.com/jenkinsci/jenkinsfile-runner/releases/download/1.0-beta-30/jenkinsfile-runner-1.0-beta-30.zip
# unzip jenkinsfile-runner-1.0-beta-30.zip -d jenkinsfile-runner
# chmod -R 777 jenkinsfile-runner
# export JAVA_OPTS="-Djenkins.model.Jenkins.slaveAgentPort=50000 -Djenkins.model.Jenkins.slaveAgentPortEnforce=true -Dhudson.model.LoadStatistics.clock=1000"
# ./jenkinsfile-runner/bin/jenkinsfile-runner run
