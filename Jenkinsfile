pipeline {
    agent any
//    tools {
//        jdk 'jdk8'
//        maven 'maven3'
//    }
    stages {
        stage('package') {
            steps {
                    sh "echo 'PATH = /${PATH}'"
                    sh "echo 'M2_HOME = /${M2_HOME}'"

                    sh "mvn clean package"
                    sh "echo 'packaging done .........................'"
  
            }
            post {
                success {
                    sh "echo 'success .........................'"
                }
                always {
                    sh 
                    "
                    ps | grep testJarFile | awk '{print \$1}' | xargs kill -9 || true \
                    env SERVER.PORT=8081 nohup java -jar ./target/testJarFile-0.0.1-SNAPSHOT.jar &
                    "
                }
            }
        }
    }
}
