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
        success {
            emailext(
                to: '$DEFAULT_RECIPIENTS',
                subject: "Build Success: ${env.JOB_NAME} - Build #${env.BUILD_NUMBER}",
                body: """
                Build was successful!
                Please find the attached test reports.
                """,
                attachLog: true,
                attachmentsPattern: 'report.html, log.html, output.xml'
            )
        }
        failure {
            emailext(
                to: '$DEFAULT_RECIPIENTS',
                subject: "Build Failure: ${env.JOB_NAME} - Build #${env.BUILD_NUMBER}",
                body: """
                Build failed!
                Please check the attached logs for more details.
                """,
                attachLog: true,
                attachmentsPattern: 'report.html, log.html, output.xml'
            )
        }
        always {
            robot outputPath: '.', logFileName: 'log.html', outputFileName: 'output.xml', reportFileName: 'report.html', passThreshold: 100, unstableThreshold: 75.0
        }
    }
}