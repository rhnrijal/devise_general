pipeline {
    agent {
        dockerfile { filename 'Dockerfile.test' }
    }
    stages {
        stage('build') {
            steps {
                sh '''
                pwd
                ls
                cd eTalent-app
                bundle install
                '''
            }
        }
		
		stage('test'){
			steps {
			sh '''
			cd Talent-app
			bin/rake db:create
            bin/rake db:migrate
            bin/rake test
			'''
			}

        
    	}

}
}
