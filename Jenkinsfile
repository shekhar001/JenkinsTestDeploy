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

        stage('Build') {
            steps {
                
		sh "echo 'done *******22'"
            }
        }

        stage('run') {
            steps {
                // sh "java -jar target/test.jar"
		sh "env SERVER.PORT=8081 nohup java -jar ./target/test.jar &"
		sh "echo 'done *******33'"
            }
        }
    }
}
