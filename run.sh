sudo apt-get install groovy -y
sudo apt-get install unzip
wget https://github.com/jenkinsci/jenkinsfile-runner/releases/download/1.0-beta-30/jenkinsfile-runner-1.0-beta-30.zip
unzip jenkinsfile-runner-1.0-beta-30.zip -d jenkinsfile-runner
chmod -R 777 jenkinsfile-runner
export JAVA_OPTS="-Djenkins.model.Jenkins.slaveAgentPort=50000 -Djenkins.model.Jenkins.slaveAgentPortEnforce=true -Dhudson.model.LoadStatistics.clock=1000"
./jenkinsfile-runner/bin/jenkinsfile-runner run
