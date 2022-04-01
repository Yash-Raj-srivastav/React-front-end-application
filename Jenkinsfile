#!/bin/bash

pipeline{
    agent any

    stages{
        stage('clone git repo'){
            steps{
                script{
                    echo ""
                    sh """
                        rm -r $WORKSPACE/React-front-end-application
                        git clone https://github.com/Yash-Raj-srivastav/React-front-end-application.git
                    """
                }
            }
        }

        stage('Run docker compose'){
            steps{
                script{
                    echo "Hello there from GitHub!!"
                    sh """
                        ls
                        chmod +x /docker-compose.yaml
                        docker-compose up
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
