pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'javac -version'
		sh 'mvn clean package'
                sh "echo 'done *******'"
            }
        }
    }
}
