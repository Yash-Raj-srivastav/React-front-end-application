#!/usr/bin/env groovy

pipeline{
    agent any

    stages{
        stage('clone git repo'){
            steps{
                script{
                    def foo = "Hello There!!"
                    if (foo.contains("Hello")){
                        println "Hello World!"
                    }
                }
            }
        }

//         stage('Run docker compose'){
//             steps{
//                 script{
//                     echo "Hello there from GitHub!!"
//                     sh """
//                         ls
//                         chmod +x docker-compose.yaml
//                         docker-compose up
//                     """
//                 }
//             }
//         }
    }
    post{
        always{
            echo "Cleaning WorkSpace!"
        }
    }
}
