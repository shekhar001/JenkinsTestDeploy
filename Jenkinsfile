pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'java --version'
		sh 'mvn clean package'
                sh "echo 'done *******'"
            }
        }
    }
}
