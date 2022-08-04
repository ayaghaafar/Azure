sudo apt-get install groovy -y
sudo apt-get install unzip
wget https://github.com/jenkinsci/jenkinsfile-runner/releases/download/1.0-beta-30/jenkinsfile-runner-1.0-beta-30.zip
unzip jenkinsfile-runner-1.0-beta-30.zip -d jenkinsfile-runner
chmod -R 777 jenkinsfile-runner
./jenkinsfile-runner/bin/jenkinsfile-runner cli -p https://updates.jenkins.io/download/plugins/durable-task/1.35/durable-task.hpi
./jenkinsfile-runner/bin/jenkinsfile-runner run
