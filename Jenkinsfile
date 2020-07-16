pipeline {
  properties([pipelineTriggers([githubPush()])])
  agent any

  stages {
    stage('检出') {
      steps {
        checkout scm
      }
    }
  }
}

