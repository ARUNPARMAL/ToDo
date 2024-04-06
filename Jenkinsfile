pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
               git branch: 'jenkins_update',
               credentialsId: 'githubauth',
               url: 'https://github.com/ARUNPARMAL/ToDo.git'
            }
        }
        stage('Build Image') {
            steps {
                script {
                    
                        sh 'docker build . -t myapp'
                    
                }
            }
        }
        stage('Run container') {
            steps {
                script {
                    
                        sh 'docker run -d -p 4000:3000 --name myapp -t myapp '   
                    
                }
            }
        }
    }
}
