pipeline {
	agent any
	stages {
		stage ('Initialize') {
			steps {
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
}
