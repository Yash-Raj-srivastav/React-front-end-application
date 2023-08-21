#!/usr/bin/env groovy

pipeline{
    agent any
    stages{
        stage('Run Docker command'){
            steps{
                script{
                    sh "/usr/local/bin/docker compose up"
                }
            }
        }

        stage('Run docker compose'){
            steps{
                script{
                    sh '/usr/local/bin/kubectl --version'
                }
            }
        }
    }
    post{
        always{
            cleanWs()
        }
    }
}
