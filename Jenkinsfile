pipeline {
	agent any
	stages {
		stage ('Initialize') {
			sh '''
				echo "PATH = ${PATH}"
				echo "DY-MVN = ${DY-MVN}"
			'''
		}
	}

		stage ('Build') {
			steps {
				echo 'Hello World!'
		}
	}
}
