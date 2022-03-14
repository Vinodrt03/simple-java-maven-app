pipeline {
    agent any
    tool name: 'maven-3.6.3', type: 'maven'
  
    stages {
        stage ('Initialize') {
            steps {
                sh. mvn clean
            }
        }    
    }  
