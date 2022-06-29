#!/usr/bin/env groovy

pipeline{
    agent {
        docker { image 'node:16.13.1-alpine' }
    }
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
                    sh 'node --version'
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
