# README
- `./build-jenkins-4-terraform.sh aws_access_key aws_secret_key`
- `./docker-compose.sh`
- `docker exec -it jenkins-aws-ready /bin/bash`
- Manually start the docker daemon `dockerd &`

## Jenkins Configuration
    pipeline {
        agent any
        
        environment {
            registry = "050752608385.dkr.ecr.ap-south-1.amazonaws.com/piramal/tech4gov"    
        }
        
        stages {
            stage('Checkout') {
                steps {
                    checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/nileshmp/springboot-sample.git']])
                }
            }
            stage('Build') {
                steps {
                    sh "mvn clean install"
                }
            }
            stage("Dockerize") {
                steps {
                    script {
                        dockerImage = docker.build registry
                        dockerImage.tag("$BUILD_NUMBER")
                    }
                }
            }
            stage ("Push Image to ECR") {
                steps {
                    script {
                        sh "aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 050752608385.dkr.ecr.ap-south-1.amazonaws.com"
                        sh "docker push 050752608385.dkr.ecr.ap-south-1.amazonaws.com/piramal/tech4gov:$BUILD_NUMBER"
                    }
                }
            }
        }
    }
        
## TODO
- executing dockerd as s deamon in docker build.

## Resourceces
- https://stackoverflow.com/questions/64105200/how-to-customize-the-url-for-jenkins-docker-container
- https://www.coachdevops.com/2023/05/how-to-deploy-springboot-microservices_13.html