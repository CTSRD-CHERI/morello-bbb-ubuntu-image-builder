pipeline {
    agent { label 'imagebuilder'}

    stages {
        stage('Build') {
            steps {
                sh '/bin/bash ./ci/morello-bbb-ubuntu-armhf-2204-minimal-v5.10-ti.sh'
            }
        }
    }
}
