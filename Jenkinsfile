pipeline {
    //agent any
    agent {
        dockerfile {
            filename 'Dockerfile'
        }
    }
    environment {
        HOME = '/tmp'
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
                echo "workspace path : ${workspace}"
                sh "dotnet restore ${workspace}/BlazorTest.csproj"
            }
        }
        stage('dotnet Clean') {
            steps {
                sh "dotnet clean ${workspace}/BlazorTest.sln"
            }
        }
        stage('Build') {
            steps {
                sh "dotnet build ${workspace}/BlazorTest.csproj --configuration Release"
            }
        }
        stage('Unit Test') {
            steps {
                sh "dotnet test ${workspace}/Tests/Tests/Tests.csproj"
            }
        }
        stage('Publish') {
            steps{
                sh "dotnet publish ${workspace}/BlazorTest.csproj --configuration Release"
            }
        }
    }
}