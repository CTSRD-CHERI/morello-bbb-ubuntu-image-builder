pipeline {
    agent { label 'imagebuilder'}

    stages {
        stage('Build') {
            steps {
		 sh '/bin/bash ./ci/daily-ubuntu-armhf-2404-minimal-v5.10-ti-am335x.sh"
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: 'deploy/am335x-ubuntu-*-console-armhf-*', onlyIfSuccessful: true
        }
    }
}
