pipeline {
    agent {label "java-node"}
    environment {
    DOCKERHUB_CREDENTIALS = credentials('sharath14-dockerhub')
    }
    stages {
        stage(' SCM checkout') { 
            steps {
              sh "git clone https://github.com/sharath-st/hello-world-war.git"
            }
        }
stage('build docker image') { 
            steps {
              sh "docker build -t sharath14/hello-world-war:$BUILD_NUMBER ."
            }
        }
stage('login to dockerhub') {
            steps {
            sh "echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin"
            }
        }
 stage ('push image') {
           steps {
              sh 'docker push sharath14/hello-world-war:$BUILD_NUMBER'
            }        
         }
        stage ('run docker image') {
            steps {
               sh "docker run -it sharath14/hello-world-war:BUILD_NUMBER bash"
            }
        }
 stage ('deploy') {
     steps {
         sh 'cp /var/lib/target/hello-world-war-1.0.1.war /usr/local/tomcat/webapps'
     }
    }
  }
}
