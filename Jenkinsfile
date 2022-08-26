pipeline {
    agent any

    stages {
        stage('Git Clone') {
            steps {
                git 'https://github.com/ramdevops03/Development-Team-Repo.git'
            }
        }
        stage('Build Application Code') {
            steps {
                sh 'mvn package -f pom.xml'
            }
        }
        stage('Deploy Code In Tomcat Dev Server') {
            steps {
               sh 'cp target/*.war /home/jenkins/apache-tomcat-8.5.82/webapps'
            }
        }
    }
}
