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
					echo 'Now Archiving ....'
					archivingArtifcats artifacts: '**/target/*.war'
				}
			}
		}
	}	
}
