pipeline{
	agent any
	tools {
		maven 'DY-MVN'
		jdk 'JDK-8'
	}
	stages {
		stage ('Build') {
			steps {
				sh 'mvn clean package'
		}
			post {
				success {
					sh 'echo $(which mvn)'
					echo 'Now Archiving ....'
					archiveArtifacts artifacts: '**/target/*.war'
				}
			}
		}
		stage ('Deploy to Staging server') {
			steps {
				build job: 'Maven-101'
			}
		}
	}	
}
