sudo apt-get install unzip
sudo apt-get install git
sudo apt install jetty9
sudo systemctl start jetty9
sudo systemctl status jetty9
wget https://github.com/jenkinsci/jenkinsfile-runner/releases/download/1.0-beta-30/jenkinsfile-runner-1.0-beta-30.zip
unzip jenkinsfile-runner-1.0-beta-30.zip
chmod -R 777 *
wget https://download.java.net/java/GA/jdk13.0.1/cec27d702aa74d5a8630c65ae61e4305/9/GPL/openjdk-13.0.1_linux-x64_bin.tar.gz
tar -xvf openjdk-13.0.1_linux-x64_bin.tar.gz
mv jdk-13.0.1 /opt/
JAVA_HOME='/opt/jdk-13.0.1'
PATH="$JAVA_HOME/bin:$PATH"
export PATH
java -version
wget https://mirrors.jenkins.io/war-stable/2.346.3/jenkins.war
wget https://github.com/jenkinsci/plugin-installation-manager-tool/releases/download/2.12.8/jenkins-plugin-manager-2.12.8.jar
wget https://github.com/jenkinsci/plugin-installation-manager-tool/archive/refs/heads/master.zip
unzip master.zip
cd plugin-installation-manager-tool-master/
java -jar ../jenkins-plugin-manager-2.12.8.jar --war ../jenkins.war --plugin-file ../plugins.txt -d plugins
cd ../
echo "git_token: ${git_token}"
echo "GHE_Token: ${GHE_Token}"
./bin/jenkinsfile-runner --httpPort=9090 -w jenkins.war -p plugin-installation-manager-tool-master/plugins -f Jenkinsfile
