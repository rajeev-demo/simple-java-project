

pipeline{

agent any

stages{
	
	stage(scm){

	steps {

        checkout scm
        
      }
	}
	stage(build){

	steps {

        sh '''mvn clean install'''
        
      }
	}
}
post {
  always {
    emailext body: 'Test Message', subject: 'Test Subject', to: 'rajeev67780214@gmail.com'
  }
}

}
