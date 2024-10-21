pipeline {
    agent { 
        node {
            label 'jenkins-agent-robot'
        }
    }
    stages {
        stage('Running-Tests') {
            steps {
                sh '''
                    robot exemplo_teste.robot
                '''
            }
        }
    }
    post {
        always {
            robot outputPath: '.', logFileName: 'log.html', outputFileName: 'output.xml', reportFileName: 'report.html', passThreshold: 100, unstableThreshold: 75.0
        }
    }
}
