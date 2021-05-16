# constants
variable "aws_region" {
    type = map(string)
    description = "AWS Region."
    default = {
        default = "us-east-2"
        prod = "us-east-1"
        staging = "us-east-2"
        dev = "us-east-2"
    }
}

variable "vpc" {
    type = map(string)
    description = "VPC id"
    default = {
        default = "YOUR VPC ID"
        prod = "YOUR VPC ID"
        staging = "YOUR VPC ID"
        dev = "YOUR VPC ID"
    }
}

variable "ecs_cluster" {
    type = map(string)
    description = "Cluster name"
    default = {
        default = "YOUR CLUSTER NAME"
        prod = "YOUR CLUSTER NAME"
        staging = "YOUR CLUSTER NAME"
        dev = "YOUR CLUSTER NAME"
    }
}