pipeline {
    agent {
        dockerfile { filename 'Dockerfile.test' }
    }
    stages {
        stage('build') {
            steps {
                sh '''
                bundle install
                '''
            }
        }
		
		stage('test'){
			steps {
			sh '''
			bin/rake db:create
            bin/rake db:migrate
            bin/rake test
			'''
			}

        
    	}

}
}
