pipeline {
    agent any
    tools {
        tool name: 'Maven', type: 'maven'"
        jdk "JDK"
    }
    stages {
        stage('Initialize'){
            steps{
                echo "PATH = ${M2_HOME}/bin:${PATH}"
                echo "M2_HOME = /usr/maven/"
            }
        }
        stage('Build') {
            steps {
                dir("/var/lib/jenkins/workspace/Pipeline Sample_java_App/src") {
                sh 'mvn -B -DskipTests clean package'
                }
            }
        }
     }
    post {
       always {
          junit(
        allowEmptyResults: true,
        testResults: '*/test-reports/.xml'
      )
      }
   } 
}
