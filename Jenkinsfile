pipeline {
    agent any
    stages {
        stage('Clean') {
            steps {
                cleanWs()
                echo 'cleanWs echo'
            }
        }
        stage ('Git Checkout') {
            steps {
                git branch: 'release', credentialsId: '9bab7baf-d6de-4b77-b16d-5eb3c9f7b25fXXX', url: 'https://github.com/AndrVelich/Blazor'
                echo 'Git Checkout echo'
            }
            
        }
        stage ('test step') {
            steps {
                echo 'test step echo'
            }
        }
    }
}