

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
       stage(docker){
         steps {
            docker build -t demo .
}
}
stage(push){
         steps {

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 759744306820.dkr.ecr.us-east-1.amazonaws.com
docker tag demo:latest 759744306820.dkr.ecr.us-east-1.amazonaws.com/demo:2.0
docker push 759744306820.dkr.ecr.us-east-1.amazonaws.com/demo:2.0
}
}

}
post {
  always {
    emailext body: 'Test Message', subject: 'Test Subject', to: 'rajeev67780214@gmail.com'
  }
}

}
