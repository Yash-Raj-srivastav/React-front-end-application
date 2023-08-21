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
                    withCredentials(credentialsId: 'docker-hub-creds'){
                        sh "/usr/local/bin/docker push ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}"   
                    }
                }
            }
        }

        // stage('Run kubectl command'){
        //     steps{
        //         script{
        //             sh '/usr/local/bin/kubectl version --short'
        //         }
        //     }
        // }
    }
    // post{
    //     always{
    //         cleanWs()
    //     }
    // }
}
