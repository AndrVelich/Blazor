pipeline {
    //agent any
    agent {
        docker { image 'mcr.microsoft.com/dotnet/sdk:5.0-buster-slim' }
    }
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
                bat "dotnet restore ${workspace}\\BlazorTest.sln"
            }
        }
        stage('dotnet Clean') {
            steps {
                bat "dotnet clean ${workspace}\\BlazorTest.sln"
            }
        }
        stage('Build') {
            steps {
                bat "dotnet build ${workspace}\\BlazorTest.csproj --configuration Release"
            }
        }
        stage('Unit Test') {
            steps {
                bat "dotnet test ${workspace}\\Tests\\Tests\\Tests.csproj"
            }
        }
        stage('Publish') {
            steps{
                bat "dotnet publish ${workspace}\\BlazorTest.csproj --configuration Release"
            }
        }
    }
}