pipeline {
    agent any
    tools {
        maven 'DY-MVN'
		jdk 'JDK-8'
    }

    stages {
        stage ('Build App') {
            steps {
                sh "mvn clean package"

// Make sure to add jenkins user in Docker Group so that it can run the docker commands.            
                sh "docker build . -t tomcatwebapp:${env.BUILD_ID}"
            }
        }
    }
}