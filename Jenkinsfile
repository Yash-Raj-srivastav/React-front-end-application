pipeline{
    agent any

    stages{
        stage('install KubeScape'){
            steps{
                script{
                    echo "Installing KubeScape for a security check of this cluster"
                    sh"""
                        curl -s https://raw.githubusercontent.com/armosec/kubescape/master/install.sh | /bin/bash                
                    """
                }
            }
        }

        stage('Run kubescape security scan'){
            steps{
                script{
                    echo "Scanning the cluster with KubeScape!"
                    sh """
                        kubescape scan framework yash-jenkins --submit --account=572b863d-03a3-4346-87af-b333c6e4db30
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
