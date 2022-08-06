pipeline {

    // to denfin node which the pipeline will create on it 
    agent {label "ec2-private-slave"}

    stages {
        stage('get code') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/NohaAlMetwally/terraform_labs.git'
            }
        }
        
        stage('CI'){
            steps{
                // to git docker hub credential 
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]){
                // to build docker image from node app and push it to my docker hub
                sh '''

                    docker build ./app -f ./jenkins_nodejs_example/Dockerfile -t nohaalmetwally/nodejs:latest
                    docker login -u ${USERNAME} -p ${PASSWORD}
                    docker push nohaalmetwally/nodejs:latest
                
                '''
                }
            }   
        }

        stage('CD'){
            steps{
                // to run a container from image
                sh 'docker run -d 
                -p 3000:3000 
                -e REDIS_HOSTNAME=cluster-tf.rypnzg.0001.use1.cache.amazonaws.com:6379 
                -e REDIS_PORT=6379 
                -e RDS_HOSTNAME=rds-terraform.c6pdt4iq9mi7.us-east-1.rds.amazonaws.com 
                -e RDS_USERNAME="noha" 
                -e RDS_PASSWORD="nohanoha" 
                -e RDS_PORT=3306 nohaalmetwally/nodejs:latest '
            }
        }
    }
}
