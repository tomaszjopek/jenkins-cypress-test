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
                sh 'node -v ; npm -v'
                sh 'npm install'
            }
        }
        stage('Build') {
            steps {
                sh './node_modules/@angular/cli/bin/ng version'
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
