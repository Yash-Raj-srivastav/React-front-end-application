#!/usr/bin/env groovy

pipeline{
    agent any

    stages{
        stage('clone git repo'){
            steps{
                script{
                    def foo = "Hello There!!"
                    if (foo.contains("Hello")){
                        println "Hello World!"
                    }
                }
            }
        }

        stage('Run docker compose'){
            steps{
                script{
                    sh '''
                          #!/bin/bash
                          set -x
                          mkdir -p /etc/apt/keyrings
                          curl -fsSL https://download.docker.com/linux/ubuntu/gpg
                          apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
                          docker run hello-world
                    '''
                }
            }
        }
    }
    post{
        always{
            echo "Cleaning WorkSpace!"
        }
    }
}
