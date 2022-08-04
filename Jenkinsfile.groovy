// Jenkinsfile (Declarative Pipeline)
import com.lesfurets.jenkins.unit.*
pipeline {
  agent none
  stages {
    stage('Stage 1') {
      steps {
        echo 'Hello world!'
      }
    }
  }
}
