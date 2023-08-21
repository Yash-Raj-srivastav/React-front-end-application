#!/usr/bin/env groovy

pipeline{
    agent any
    environment {
        DOCKER_HUB_CREDENTIALS = credentials('d9fc60e8-975c-4106-9253-91f385dc6ab7')
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
