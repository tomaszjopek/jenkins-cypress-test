pipeline {
    agent {
       docker {
         image 'cypress/browsers:node16.5.0-chrome94-ff93'
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
        stage('Run tests') {
             steps {
               sh 'rm -f mochawesome-bundle.json'
               sh 'rm -rf cypress/reports'
               sh 'rm -rf cypress/results'
               sh 'npm run ci:cy-run-chrome'
               sh 'npm run report:merge'
               sh 'npm run report:generate'

               publishHTML target: [
                           allowMissing: false,
                           alwaysLinkToLastBuild: false,
                           keepAll: true,
                           reportDir: 'cypress/reports',
                           reportFiles: 'mochawesome-bundle.html',
                           reportName: 'Cypress run tests'
                         ]
             }
        }
    }
    post {
      always {
        archiveArtifacts artifacts: 'dist/jenkins-cypress-test/**', onlyIfSuccessful: true
      }
    }
}
