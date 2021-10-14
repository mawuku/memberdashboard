pipeline {
    agent any

    stages {
        stage('Hello') {
		  steps {
		        checkout([$class: 'GitSCM', branches: [[name: '**']], extensions: [], userRemoteConfigs: [[credentialsId: 'Github_pull_request', url: 'https://github.com/mawuku/memberdashboard']]])
                echo 'Hello World'
				if (fileExists('README.md')) {
					echo 'passed'
				  } else {
					echo 'No'
					sh 'exit 1'
				}

            }
        }
    }
}
