pipeline {
    agent { label 'imagebuilder'}

    stages {
        stage('Build') {
            steps {
		cleanWs()
                sh '/bin/bash ./ci/morello-bbb-ubuntu-armhf-2404-minimal-v5.10-ti.sh'
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: 'deploy/am335x-ubuntu-*-console-armhf-*', onlyIfSuccessful: true
        }
    }
}
