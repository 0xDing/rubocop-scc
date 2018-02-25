pipeline {
    agent { docker 'ruby:2.5.0-alpine3.7' }
    stages {
        stage('Build') {
            steps {
                sh 'bundle install'
            }
        }
        stage('Test') {
            steps {
                sh 'rake test'
            }
        }
    }
}