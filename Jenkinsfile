pipeline {
	agent any
	
	tools {
		maven 'DY-MVN'
		jdk 'JDK-8'
	}
// Always define the values in parameters then hardcoding them in the script.

	parameters {
		string(name: 'tomcat-dev', defaultValue: '104.27.138.149', description: 'Tomcat server for staging environment.')
		string(name: 'tomcat-prod', defaultValue: '104.27.139.149', description: 'Tomcat server for Production environment.')
	}

// How to trigger the build. Here we are using Repository polling as a method to trigger the build against any changes in the Repo, every minute.
	triggers {
		pollSCM('* * * * *')
	}

	stages {
		stage ('Build') {
			steps {
				sh 'mvn clean package'
			}
			post {
				success {
					echo 'Now archiving ......'
					archiveArtifacts artifacts: '**/target/*.war'
				}
			}
		}

// Run Multiple Deployments in parllel.
		stage ('Deployments') {
			parallel {

// Deploying Build to staging.								
				stage ('Deploy to Staging') {
					steps {
						sh "cp **/target/*.war /opt/tomcat/staging/webapps"
					}
				}

// Deploying Build to Production.				
				stage ('Deploy to Production') {
					steps {
						sh "cp **/target/*.war /opt/tomcat/prod/webapps"
					}
				}
			}
		}
	}
}