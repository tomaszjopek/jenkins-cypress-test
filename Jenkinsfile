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
//                 sh 'npm ci'
                sh 'ls -la'
                sh 'pwd'
                sh 'ls -l /'
                sh 'ls -l /home'
                sh 'ls -la /home/node'
                sh 'printenv'
            }
        }
//         stage('Build') {
//             steps {
//                 sh 'chmod 755 ./node_modules/@angular/cli/bin/ng'
//                 sh './node_modules/@angular/cli/bin/ng version'
//                 sh 'npm run ci:build'
//                 sh 'ls -la'
//                 sh 'pwd'
//             }
//         }
//         stage('Test') {
//             steps {
//                 sh 'npm run cy:verify'
//                 sh 'ls -la'
//                 sh 'pwd'
//             }
//         }
    }
}
