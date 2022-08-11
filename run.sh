sudo apt-get install groovy -y
sudo apt-get install unzip
sudo apt install default-jre
sudo apt-get install git
java -version
sudo apt install default-jdk
javac -version
git pull https://github.com/ayaghaafar/Jenkins-runner.git
# wget https://github.com/jenkinsci/jenkinsfile-runner/releases/download/1.0-beta-30/jenkinsfile-runner-1.0-beta-30.zip
#wget https://github.com/jenkinsci/jenkinsfile-runner/releases/download/1.0-beta-29/jenkinsfile-runner-1.0-beta-29.zip
# unzip jenkinsfile-runner-1.0-beta-29.zip
# unzip jenkinsfile-runner-1.0-beta-30.zip -d /usr/share
cp -R Jenkins-runner /usr/share/
wget https://get.jenkins.io/war-stable/2.277.1/jenkins.war -P /usr/share/lib
chmod -R 777 /usr/share/Jenkins-runner/bin/jenkinsfile-runner
/usr/share/Jenkins-runner/bin/jenkinsfile-runner -p plugins.txt -f Jenkinsfile
