pipeline {
	agent any
	stages {
		steps ('Initialize') {
			sh '''
				echo "PATH = ${PATH}"
				echo "DY-MVN = ${DY-MVN}"
			'''
		}
	}

		steps ('Build') {
			steps {
				echo 'Hello World!'
		}
	}
}
