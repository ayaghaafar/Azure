sudo apt-get install groovy -y
sudo apt-get install unzip
sudo apt install default-jre
java -version
sudo apt install default-jdk
javac -version
wget https://github.com/jenkinsci/jenkinsfile-runner/releases/download/1.0-beta-30/jenkinsfile-runner-1.0-beta-30.zip
#wget https://github.com/jenkinsci/jenkinsfile-runner/releases/download/1.0-beta-29/jenkinsfile-runner-1.0-beta-29.zip
# unzip jenkinsfile-runner-1.0-beta-29.zip
unzip jenkinsfile-runner-1.0-beta-30.zip
wget https://get.jenkins.io/war-stable/2.277.1/jenkins.war
chmod -R 777 ./*
# export JAVA_OPTS="-Djenkins.model.Jenkins.slaveAgentPort=50000 -Djenkins.model.Jenkins.slaveAgentPortEnforce=true -Dhudson.model.LoadStatistics.clock=1000"
export JAVA_OPTS="--illegal-access=permit $JAVA_OPTS"
./bin/jenkinsfile-runner -p plugins.txt -f Jenkinsfile
