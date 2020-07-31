pipeline {
  environment {
    registry = "jmcdice/jenkins-test-img"
    #registryCredential = ''
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


