pipeline{

    agent{
        label "window"
    }

    stages{
        stage("Clone Git Repository"){
            steps{
                echo 'Clone Git Repository'
                sh 'git clone https://github.com/SHAODOO/ZeePort'
            }
        }

        stage("Test"){
            steps{
                echo 'Test'
            }
        }

        stage("Deploy"){
            steps{
                echo 'Deploy'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }

}
