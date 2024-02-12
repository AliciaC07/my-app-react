pipeline {
    agent any
    stages {
        stage("Clone Git Repository") {
            steps {
                git(
                    url: "https://github.com/AliciaC07/my-app-react.git",
                    branch: "master",
                    changelog: true,
                    poll: true
                )
            }
        }
        stage("Build image"){
            sh 'docker build -t aliciac07/react-app:latest .'

        }
    }
}