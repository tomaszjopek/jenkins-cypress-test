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
                echo 'Node version: ${node -v}'
                echo 'Npm version: ${npm -v}'
                sh 'npm install'
            }
        }
        stage('Build') {
            steps {
                sh 'ls -l'
                sh 'ls -l ./node_modules'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "it is testing right now"'
            }
        }
    }
}
