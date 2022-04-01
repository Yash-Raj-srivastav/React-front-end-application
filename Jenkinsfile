#!/bin/bash

pipeline{
    agent any

    stages{
        stage('Run a docker container'){
            steps{
                script{
                    echo ""
                    sh"""
                        docker-compose up
                        docker ps
                    """
                }
            }
        }

        stage('Run kubescape security scan'){
            steps{
                script{
                    echo "Hello there from GitHub!!"
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
