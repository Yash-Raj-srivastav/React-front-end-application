#!/usr/bin/env groovy

pipeline{
    agent any
    stages{
        stage('Run Docker command'){
            steps{
                script{
                    sh "docker"
                }
            }
        }

        stage('Run docker compose'){
            steps{
                script{
                    sh 'kubectl version'
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
