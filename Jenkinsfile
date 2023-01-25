pipeline {
    agent any

    stages {
        stage('Configuring the repo') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sirjoon/Terraform_Sir.git']])
            }
        }
        stage("Terraform Init ") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("Terraform Plan") {
            steps {
                sh 'terraform plan'
            }
        }
        stage("Terraform apply") {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
        stage("Uploading tfstate to S3") {
            steps {
                
                sh 'aws s3 cp terraform.tfstate s3://cf-templates-1wcpr9suq47a7-us-east-1/'
                
            }
        }    
    }
}
