pipeline {
  agent any

  stages {
    stage('检出') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: env.GIT_BUILD_REF]],
        userRemoteConfigs: [[url: env.GIT_REPO_URL, credentialsId: env.CREDENTIALS_ID]]])
      }
    }

    stage('sit 接口测试') {
        when {
            branch 'sit'
        }
        steps {
            sh 'mvn test -Dkarate.env=sit'
        }
    }

    stage('uat 接口测试') {
        when {
            branch 'uat'
        }
        steps {
            sh 'mvn test -Dkarate.env=uat'
        }
    }
  }

  post {
      always {
          junit 'target/surefire-reports/*.xml'
      }
  }
}

