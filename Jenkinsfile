pipeline{

    agent any

    stages{
        stage("changeSets"){
            steps{
                echo "${currentBuild.changeSets}"
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
