pipeline {
    agent any
    stages {
        stage('Clean') {
            steps {
                cleanWs()
            }
        }
        stage ('Git Checkout') {
            steps {
                git branch: 'Release', credentialsId: 'github', url: 'https://github.com/AndrVelich/Blazor'
            }
        }
    }
}