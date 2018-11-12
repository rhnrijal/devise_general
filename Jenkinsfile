pipeline {
    agent {
        dockerfile { filename 'Dockerfile.test' }
    }
    stages {
        stage('build') {
            steps {
                sh '''
                cd eTalent-app
                bundle install
                '''
            }
        }
    }
}
