sudo apt-get install groovy -y
sudo apt-get install unzip
wget https://github.com/jenkinsci/jenkinsfile-runner/releases/download/1.0-beta-30/jenkinsfile-runner-1.0-beta-30.zip
unzip jenkinsfile-runner-1.0-beta-30.zip
./jenkinsfile-runner-1.0-beta-30/bin/jenkinsfile-runner -w /tmp/jenkins -p /tmp/jenkins_home/plugins -f . -a "param1=Hello&param2=value2"
# chmod 777 Jenkinsfile.groovy
# groovy Jenkinsfile.groovy
