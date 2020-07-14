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
        when {
            branch 'sit'
            steps {
                sh 'mvn test -Dkarate.env=sit'
            }
        }

        when {
            not {
                branch 'sit'
            }

            steps {
                sh 'mvn test -Dkarate.env=dev'
            }
        }
    }
  }

  post {
      always {
          junit 'target/surefire-reports/*.xml'
      }
  }
}

