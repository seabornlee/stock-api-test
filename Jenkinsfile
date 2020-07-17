pipeline {
  agent any

  stages {
    stage('检出') {
      steps {
        checkout scm
      }
    }

    stage('sit 接口测试') {
      when {
        branch 'sit'
      }

      steps {
        sh 'mvn test -Dkarate.env=sit'
      }

      post {
        always {
          junit 'target/surefire-reports/TEST-AllTest.xml'
        }
      }
    }
  } 
}

