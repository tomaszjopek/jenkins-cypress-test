pipeline {
    agent {
        docker {
            image 'cypress/base:12.16.1'
            args '-p 3000:3000'
        }
    }
    environment {
        HOME = '.'
    }
    stages {
        stage('Install Dependencies') {
            steps {
                sh 'npm -v ; node -v'
                sh 'npm cache clean --force'
                sh 'npm install'
            }
        }
        stage('Build') {
            steps {
                sh 'ng version'
                sh 'npm run build'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "it is testing right now"'
            }
        }
    }
}
