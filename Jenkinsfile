pipeline {
    agent {
        docker {
            image 'maven:3-alpine' 
            args 'C:/Program Files (x86)/Jenkins/workspace/maven-fundamentals-pipeline' 
        }
    }
    stages {
        stage('build') {
                environment {
                  HOME="."
                }
                steps {
                    sh 'mvn --version'
                }
        }
        stage('SCM Checkout') {
            steps {
                sh 'git clone https://github.com/TomKugelman/maven.java-fundamentals'
            }
        }

        stage('Compile-Package') {
            steps {
                script {
                    def mvnHome = tool name: 'maven-3', type: 'maven'
                    sh "${mvnHome}/bin/mvn/package"
                }
            }
        }
    }
}
