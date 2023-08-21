#!/usr/bin/env groovy

pipeline{
    agent any
    stages{
        stage('Run Docker command'){
            steps{
                script{
                    sh "/usr/local/bin/docker compose up -d"
                }
            }
        }

        stage('Run kubectl command'){
            steps{
                script{
                    sh '/usr/local/bin/kubectl version --short'
                }
            }
        }
    }
    // post{
    //     always{
    //         cleanWs()
    //     }
    // }
}
