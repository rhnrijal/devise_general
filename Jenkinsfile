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
			RAILS_ENV=test bin/rake db:create
      RAILS_ENV=test bin/rake db:migrate
      RAILS_ENV=test bin/rake test
			'''
			}

        
    	}

}
}
