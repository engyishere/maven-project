pipeline {
    agent any
    tools {
        maven 'DY-MVN'
		jdk 'JDK-8'
    }
    stages {
        stage ('Build App') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}