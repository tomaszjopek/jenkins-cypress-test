pipeline {
    agent {
        docker {
            image 'cypress/base:12.16.1'
        }
    }
    environment {
        HOME = '.'
    }
    stages {
        stage('Install Dependencies') {
            steps {
                sh 'echo "Node version: ${node -v}"'
                sh 'echo "Npm version: ${npm -v}""'
                sh 'npm install'
            }
        }
        stage('Build') {
            steps {
                sh './node_modules/@angular/cli/bin/ng build'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "it is testing right now"'
            }
        }
    }
}
