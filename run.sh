sudo apt-get install groovy -y
sudo apt-get install unzip
sudo apt install default-jre
sudo apt-get install git
java -version
sudo apt install default-jdk
wget https://github.com/jenkinsci/jenkinsfile-runner/releases/download/1.0-beta-30/jenkinsfile-runner-1.0-beta-30.zip
unzip jenkinsfile-runner-1.0-beta-30.zip
wget https://updates.jenkins.io/download/war/2.363/jenkins.war
#wget https://get.jenkins.io/war-stable/latest/jenkins.war
chmod -R 777 *
mvn clean install
wget https://download.java.net/java/GA/jdk13.0.1/cec27d702aa74d5a8630c65ae61e4305/9/GPL/openjdk-13.0.1_linux-x64_bin.tar.gz
tar -xvf openjdk-13.0.1_linux-x64_bin.tar.gz
mv jdk-13.0.1 /opt/
JAVA_HOME='/opt/jdk-13.0.1'
PATH="$JAVA_HOME/bin:$PATH"
export PATH
java -version
wget https://github.com/jenkinsci/plugin-installation-manager-tool/archive/refs/heads/master.zip
unzip master.zip
java -jar plugin-management-cli/target/jenkins-plugin-manager*.jar --war jenkins.war --plugin-file plugins-new.txt --plugins delivery-pipeline-plugin:1.3.2 deployit-plugin
./bin/jenkinsfile-runner -w jenkins.war -p plugins.txt -f Jenkinsfile
