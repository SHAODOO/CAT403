pipeline{

    agent{
        label "window"
    }

    stages{
        stage("Clone Git Repository"){
            steps{
                echi 'Clone Git Repository'
                sh 'git clone https://github.com/SHAODOO/CAT403'
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

}
