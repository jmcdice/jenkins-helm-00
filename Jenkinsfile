pipeline {
  environment {
    registry = "jmcdice/jenkins-test-img"
    registryCredential = 'abc123'
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/jmcdice/jenkins-helm-00.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          docker.build registry + ":latest"
        }
      }
    }
  }
}


