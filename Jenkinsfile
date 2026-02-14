pipeline{
    agent any
    stages {
        stage('source code') {
            steps {
                echo 'Cloning...'
                   git branch: 'main', url: 'https://github.com/Rajeshwarimughilan/final_day_devops.git'

            }
        }
        stage('terraform') {
            steps {
                echo 'Deploying...'
                sh 'terraform init'
                sh 'terraform plan -var="ami_id=ami-073130f74f5ffb161" -var="instance_type=t3.small"'
                sh 'terraform apply -var="ami_id=ami-073130f74f5ffb161" -var="instance_type=t3.small" -auto-approve'
            }
        }
    }
}