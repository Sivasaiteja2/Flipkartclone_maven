pipeline {
    agent any

    environment {
        // Change these to match your setup
        IMAGE_NAME       = "flipkartclone-maven"
        IMAGE_TAG        = "${env.BUILD_NUMBER}"
        CONTAINER_NAME   = "flipkartclone-app"
        HOST_PORT        = "8081"   // host port -> mapped to container's 8080
        CONTAINER_PORT   = "8080"

        // Only needed if you want to push to a registry (see "Push" stage)
        DOCKERHUB_CREDS  = "dockerhub-creds"   // Jenkins credentials ID (username/password)
        DOCKERHUB_REPO   = "yourdockerhubuser/flipkartclone-maven"
    }

    options {
        buildDiscarder(logRotator(numToKeepStr: '10'))
        timestamps()
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Sivasaiteja2/Flipkartclone_maven.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Repo already has a multi-stage Dockerfile:
                    // Stage 1 builds the WAR with Maven, Stage 2 deploys it into Tomcat 9
                    dockerImage = docker.build("${IMAGE_NAME}:${IMAGE_TAG}")
                }
            }
        }

        stage('Push to Docker Hub') {
            // Remove/skip this stage if you don't need a registry push
            when {
                expression { return env.PUSH_TO_REGISTRY == 'true' }
            }
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', DOCKERHUB_CREDS) {
                        dockerImage.push("${IMAGE_TAG}")
                        dockerImage.push("latest")
                    }
                }
            }
        }

        stage('Stop & Remove Existing Container') {
            steps {
                sh '''
                    if [ "$(docker ps -aq -f name=${CONTAINER_NAME})" ]; then
                        docker stop ${CONTAINER_NAME} || true
                        docker rm ${CONTAINER_NAME} || true
                    fi
                '''
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                    docker run -d \
                        --name ${CONTAINER_NAME} \
                        -p ${HOST_PORT}:${CONTAINER_PORT} \
                        ${IMAGE_NAME}:${IMAGE_TAG}
                '''
            }
        }

        stage('Verify') {
            steps {
                sh '''
                    sleep 5
                    docker ps -f name=${CONTAINER_NAME}
                    curl -sSf http://localhost:${HOST_PORT}/ -o /dev/null && echo "App is up on port ${HOST_PORT}" || echo "App did not respond yet - check container logs"
                '''
            }
        }
    }

    post {
        success {
            echo "Build ${IMAGE_TAG} deployed successfully. Visit http://<jenkins-host>:${HOST_PORT}/"
        }
        failure {
            echo "Pipeline failed. Check console output for details."
            sh 'docker logs ${CONTAINER_NAME} || true'
        }
        always {
            sh 'docker image prune -f || true'
        }
    }
}
