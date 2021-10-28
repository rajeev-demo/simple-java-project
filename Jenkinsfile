

pipeline{

agent {
  label 'slave1'
}

stages{
	
	stage(scm){

	steps {

        checkout scm
        
      }
	}
	stage(scm){

	steps {

        sh ''' mvn clean install'''
        
      }
	}
}

}
