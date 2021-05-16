provider "vault" {
    address = "http://vault.example.com:8200/"
    
}

data "vault_aws_access_credentials" "creds" {
    type = "sts"
    backend = "aws"
    role = "ecs_deploy"
}


provider "aws" {
    
    region = local.region

    access_key = data.vault_aws_access_credentials.creds.access_key
    secret_key = data.vault_aws_access_credentials.creds.secret_key
    token = data.vault_aws_access_credentials.creds.security_token
}

data "aws_ecs_cluster" "cluster" {
    cluster_name = local.cluster
}


output "access_key" {
    value = data.vault_aws_access_credentials.creds.access_key
}

output "secret_key" {
    value = data.vault_aws_access_credentials.creds.secret_key
}

output "security_token" {
    value = data.vault_aws_access_credentials.creds.security_token
}