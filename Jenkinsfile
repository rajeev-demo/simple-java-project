

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
	stage(build){

	steps {

        sh ''' mvn clean install'''
        
      }
	}
}

}
