pipeline {
    agent {
        docker {
            image 'mcr.microsoft.com/windows/nanoserver:ltsc2022'
        }
    }

    stages {
        stage('Get Commit Previous Details') {
            environment {
                  HOME="."
            }
            steps {
                script{

                    List<String> changes = getChangedFilesList()
                    println ("Changed file list: " + changes)

                    String gitCommitId = getGitcommitID()
                    println("GIT CommitID: " + gitCommitID)

                    String gitCommitAuthorName = getAuthorName()
                    println("GIT CommitAuthorName: " + gitCommitAuthorName)

                    String gitCommitMessage = getCommitMessage()
                    println("GIT CommitMessage: " + gitCommitMessage)

                }
            }
        }
    }
}

@NonCPS
List<String> getChangedFilesList(){
    def changedFiles = []
    for ( changeLogSet in currentBuild.changeSets){
        for (entry in changeLogSet.getItems()){
            changedFiles.addAll(entry.affectedPaths)
        }
    }
    return changedFiles
}

@NonCPS
String getGitcommitID(){
    gitCommitID = " "
    for ( changeLogSet in currentBuild.changeSets){
        for (entry in changeLogSet.getItems()){
            gitCommitID = entry.commitId
        }
    }
    return gitCommitID
}

@NonCPS
String getAuthorName(){
    gitAuthorName = " "
    for ( changeLogSet in currentBuild.changeSets){
        for (entry in changeLogSet.getItems()){
            gitAuthorName = entry.authorName
        }
    }
    return gitAuthorName
}

@NonCPS
String getCommitMessage(){
    commitMessage = " "
    for ( changeLogSet in currentBuild.changeSets){
        for (entry in changeLogSet.getItems()){
            commitMessage = entry.msg
        }
    }
    return commitMessage
}
