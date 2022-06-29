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
                    sh """
                      set -x
                      curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
                      && tar xzvf docker-17.04.0-ce.tgz \
                      && mv docker/docker /usr/local/bin \
                      && rm -r docker docker-17.04.0-ce.tgz
                    """
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
