pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'mvn -v'
		sh 'mvn clean package'
                sh "echo 'done *******'"
            }
        }
    }
}
