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
        stage('Pushing to artifactory'){
       steps {
        nexusArtifactUploader artifacts: [[artifactId: 'web', classifier: '', file: 'target/web.war', type: 'war']], credentialsId: 'nexususer', groupId: 'project', nexusUrl: '52.23.208.165:8081/nexus', nexusVersion: 'nexus2', protocol: 'http', repository: 'releases', version: '1.8'
       }     
        }
        stage('Download artifact'){
       steps {
        sh 'wget http://52.23.208.165:8081/nexus/content/repositories/releases/project/web/1.8/web-1.8.war'
       }     
        }     
       
        stage('Deploy Code In Tomcat Dev Server-1') {
            steps {
               sh 'cp web**.*.war /home/jenkins/apache-tomcat-8.5.82/webapps'
            }
        }
    
    }
 
}
