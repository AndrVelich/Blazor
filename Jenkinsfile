pipeline {
    agent any
    stages {
        stage('Clean') {
            steps {
                cleanWs()
            }
        }
        stage ('Git Checkout test') {
            steps { 
                git branch: 'release', credentialsId: 'github', url: 'https://github.com/AndrVelich/Blazor'
            }
        }
    }
}