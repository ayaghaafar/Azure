sudo apt-get install groovy -y
sudo apt-get install unzip
sudo apt install default-jre
sudo apt-get install git
java -version
sudo apt install default-jdk
javac -version
wget jenkinsfile-runner-1.0-beta-30.zip
unzip jenkinsfile-runner-1.0-beta-30.zip
chmod -R 777 ./*
./bin/jenkinsfile-runner -p plugins.txt -f helloworld/jenkinsfile
