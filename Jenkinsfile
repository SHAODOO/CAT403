pipeline{

    agent any

    stages{
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
