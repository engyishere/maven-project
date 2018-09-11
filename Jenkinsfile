pipeline{
	agent any
	stages {
		stage ('Build') {
			steps {
				sh 'mvn clean package'
		}
			post {
				success {
					echo 'Now Archiving ....'
					archivingArtifcats artifacts: '**/target/*.war'
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
