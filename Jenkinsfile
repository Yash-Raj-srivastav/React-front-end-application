#!/usr/bin/env groovy

pipeline{
    agent any
    environment {
        DOCKER_HUB_CREDENTIALS = credentials('docker-hub-creds')
        DOCKER_IMAGE_NAME = 'react-application-react-app'
        DOCKER_IMAGE_TAG = 'latest'
    }
    stages{
        stage('Run Docker command'){
            steps{
                script{
                    //withCredentials([usernamePassword(credentialsId: 'docker-hub-creds', passwordVariable: '$USER_NAME', usernameVariable: '$USER_PASS')]){
                        //sh "docker push ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}"   
                    //}
                    sh "docker --version"
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
    post{
        always{
            cleanWs()
        }
    }
}
