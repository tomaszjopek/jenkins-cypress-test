pipeline {
    agent {
        docker {
            image 'cypress/base:12.16.1'
            args '-p 3000:3000'
        }
    }
    stages {
        stage('Install Dependencies') {
            steps {
                sh 'echo "installing dependencies"'
                sh 'npm -v'
                sh 'node -v'
            }
        }
        stage('Build') {
            steps {
                sh 'echo "it is building right now"'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "it is testing right now"'
            }
        }
    }
}
