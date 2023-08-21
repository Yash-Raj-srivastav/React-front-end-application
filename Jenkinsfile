#!/usr/bin/env groovy

pipeline{
    agent any
    tools {
        // Define the Docker tool by name and install automatically if not found
        dockerTool 'docker'
    }
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
