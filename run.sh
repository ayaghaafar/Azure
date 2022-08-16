sudo apt-get install groovy -y
sudo apt-get install unzip
sudo apt install default-jre
sudo apt-get install git
java -version
sudo apt install default-jdk
java --version
wget https://github.com/jenkinsci/jenkinsfile-runner/releases/download/1.0-beta-30/jenkinsfile-runner-1.0-beta-30.zip
unzip jenkinsfile-runner-1.0-beta-30.zip
wget https://updates.jenkins.io/download/war/2.363/jenkins.war
#wget https://get.jenkins.io/war-stable/latest/jenkins.war
chmod -R 777 *
#java -jar jenkins.war --enable-future-java
./bin/jenkinsfile-runner -p plugins.txt -f Jenkinsfile
