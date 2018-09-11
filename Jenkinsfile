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
		stage ('Deploy-to-production') {
			steps {
				timeout(time:5, unit:'DAYS'){
					input message: 'Approve the Build and Deploy to Production'					
				}
				build job: 'Deploy-to-prod'
			}
			post {
				success {
					echo 'Code deployed to the production'
				}
				failure {
					echo 'Deployment Failed'
				}
			}
		}
	}	
}
