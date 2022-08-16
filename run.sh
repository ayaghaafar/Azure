sudo apt-get install groovy -y
sudo apt-get install unzip
sudo apt install default-jre
sudo apt-get install git
java -version
sudo apt install default-jdk
javac -version
wget https://github.com/jenkinsci/jenkinsfile-runner/releases/download/1.0-beta-30/jenkinsfile-runner-1.0-beta-30.zip
unzip jenkinsfile-runner-1.0-beta-30.zip
chmod -R 777 *
./bin/jenkinsfile-runner -f Jenkinsfile && rm -rf /var/folders/65/rbhxkvzx0l11g7z834_6fm2c0000gn/T/plugins*/*.jpi
