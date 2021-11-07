pipeline {
    agent {
       docker {
         image 'cypress/base:12.18.4'
       }
    }
    environment {
        HOME = '.'
        CYPRESS_CACHE_FOLDER='./cypress-cache'
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
                sh 'npx cypress cache path'
                sh 'npx cypress cache list'
                sh 'npm run cy:verify'
            }
        }
        stage('Test') {
            steps {
                sh 'npx cypress run --headless'
            }
        }
    }
}
