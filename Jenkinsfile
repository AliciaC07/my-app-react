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
            steps {
                script {
                    // Build Docker image using the Dockerfile located in the root folder of the cloned repository
                    sh "docker build -t aliciac07/react-app:latest ."
                }
            }
        }
    }
}
