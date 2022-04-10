pipeline{
      agent { label 'java-node' }
      stages{
      stage('check out'){
                  steps{
                  sh "rm -rf hello-world-war"
                  sh "https://github.com/sharath-st/hello-world-war.git"
                  }
                  }
      stage('build'){
      steps{
      sh "pwd"
      sh "ls"
      sh "cd hello-world-war"
      sh "docker build -t sharath-st/dockimage:1.0 ."
      }
      }
       stage('publish'){
                  steps{
                        sh "docker login -u sharath14 -p Sharath@1408"
                        sh "docker push sharath-st/dockimage:1.0"
                  }
            }
            stage('deploy'){
                  agent { label 'java-node2' }
                  steps{
                        sh "docker login -u sharath14 -p Sharath@1408"
                        sh "docker pull sharath14/dockimage:1.0"
                        //sh "docker rm -f trail1"
                        sh "docker run -d -p 8085:8080 --name trail1 sharath14/dockimage:1.0"
                  }
            }
      }
      }
