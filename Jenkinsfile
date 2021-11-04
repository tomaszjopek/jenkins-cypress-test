pipeline {
    agent {
        docker {
            image 'cypress/base:12.18.4'
        }
    }
    environment {
        HOME = '.'
    }
    stages {
        stage('Install Dependencies') {
            steps {
                sh 'node -v ; npm -v'
                sh 'npm ci'
            }
        }
        stage('Build') {
            steps {
                sh 'chmod 755 ./node_modules/@angular/cli/bin/ng'
                sh './node_modules/@angular/cli/bin/ng version'
                sh 'npm run ci:build'
            }
        }
        stage('Test') {
            steps {
                sh 'npx cypress run --headless'
            }
        }
    }
}
