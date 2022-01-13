pipeline {
    agent any
    stages {
        stage('Clean') {
            steps {
                cleanWs()
                echo 'cleanWs echo'
            }
        }
        stage ('Git Checkout disabled') {
            steps {
                echo 'Git Checkout disabled echo'
                //git branch: 'release', credentialsId: 'github', url: 'https://github.com/AndrVelich/Blazor'
            }
            
        }
        stage ('test step') {
            steps {
                echo 'test step echo'
            }
        }
    }
}