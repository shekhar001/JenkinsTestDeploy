pipeline {
    agent any
    stages {
 
        stage('Build'){
            steps {
                sh 'mvn clean package'
 
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose -f docker-compose.yml up -d'
            }
        }
    }
}
