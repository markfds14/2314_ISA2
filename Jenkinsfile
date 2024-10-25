pipeline{
    agent any

    stages{
        stage("Build Docker Image"){
            steps{
               script{
                    bat "docker build -t markfds14/2314_ISA2 ."
               }
        
            }
        }
        stage("Delete Container "){
            steps{
               script{
                    bat "docker rm -f 2314 || exit 0"
               }
        
            }
        }
        stage("Build and run Docker Container"){
            steps{
               script{
                    bat "docker run -d --name 2314 markfds14/2314_ISA2"
               }
        
            }
        }

    }
}
