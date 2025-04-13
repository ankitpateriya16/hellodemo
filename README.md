
Install and configure the Jenkins architecture on Azure VM
Use the required plugins to run the build 
  > install maven pluging
      > go to manage jenkins => pluging => available pluging => search maven and install maven integration pluging 
      > go to manage jenkins => tool => add maven in bottom => give uniqe name and save it 
create pipeline
  > new item => give name of the project => select pipeline and save
  > select project => configure => add below pileline and save
  > than build now to run the pipeline

 pipeline {
    agent any

    tools {
        maven 'mvn' 
    }
    options {
    timeout(time: 3, unit: 'MINUTES')  // Auto-abort after 15 min
    }
    environment {
        GIT_REPO = 'https://github.com/ankitpateriya16/hellodemo.git'
        DOCKER_IMAGE = 'pateriyaji/my-java-app'
        APP_PORT = '8081'
    }

    stages {
        stage('Clone Repository') {
            steps {
                echo '🔄 Cloning GitHub repository...'
                git url: "${env.GIT_REPO}", branch: 'main'
            }
        }

        stage('Build with Maven') {
            steps {
                echo '🔧 Building the Java application...'
                sh 'mvn clean compile'
            }
        }

        stage('Run Tests') {
            steps {
                echo '🧪 Running tests...'
                sh 'mvn test'
            }
        }

        stage('Package and Build Docker Image') {
            steps {
                echo '🐳 Building Docker image...'
                sh 'mvn package -DskipTests'
                sh "docker build -t ${DOCKER_IMAGE} ."
            }
        }

        stage('Run Docker Container') {
            steps {
                echo '🚀 Running Docker container...'
                // Stop old container if running
                sh 'docker rm -f my-java-app || true'
                // Run new one
                sh "docker run -d --name my-java-app -p ${APP_PORT}:${APP_PORT} ${DOCKER_IMAGE}"
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline completed successfully.'
        }
        failure {
            echo '❌ Pipeline failed.'
        }
        aborted {
             echo 'Build was aborted!'
             sh 'killall java || true'  // Clean stuck processes
       }
    }
}

Click on build and check the output. 
Expose the application on the respective ports so that the user can access the deployed application and open tcp port for azure VM
