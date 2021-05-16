locals {
    region = lookup(var.aws_region, terraform.workspace)
    vpc = lookup(var.vpc, terraform.workspace)
    cluster = lookup(var.ecs_cluster, terraform.workspace)
    environment = var.environment
    service_name = lower(var.service_name)
}