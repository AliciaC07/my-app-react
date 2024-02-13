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
            // Define the Dockerfile location
            def dockerfileLocation = '.'

            // Build Docker image
            def dockerBuildCmd = "docker build -t aliciac07/react-app:latest -f ${dockerfileLocation} ."
            echo "Executing Docker build command: ${dockerBuildCmd}"
            sh dockerBuildCmd
        }
    }
}
    }
}
