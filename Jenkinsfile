pipeline {
  agent any

  stages {
    stage('检出') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: env.GIT_BUILD_REF]],
        userRemoteConfigs: [[url: env.GIT_REPO_URL, credentialsId: env.CREDENTIALS_ID]]])
      }
    }

    stage('接口测试') {
      steps {
        sh 'mvn test'
      }
    }
  }

  post {
      always {
          junit 'target/surefire-reports/*.xml'
      }
  }
}

