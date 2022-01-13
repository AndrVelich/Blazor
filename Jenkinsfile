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
                git branch: 'release', url: 'https://github.com/AndrVelich/Blazor'
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