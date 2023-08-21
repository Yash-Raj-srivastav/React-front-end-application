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
                    docker.withRegistry('', DOCKER_HUB_CREDENTIALS){
                        sh """
                            /usr/local/bin/docker push react-application-react-app:latest
                        """   
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
