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
                          apt-get update
                          apt-get install \
                          ca-certificates \
                          curl \
                          gnupg \
                          lsb-release
                          mkdir -p /etc/apt/keyrings
                          curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
                          echo \
                          "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
                          $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
                          apt-get update
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
