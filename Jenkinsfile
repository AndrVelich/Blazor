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
        stage('Restore packages') {
            steps {
                bat "dotnet restore ${workspace}\\BlazorPipeline\\BlazorTest.sln"
            }
        }
    }
}