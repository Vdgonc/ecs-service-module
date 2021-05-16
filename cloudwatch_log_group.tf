resource "aws_cloudwatch_log_group" "logs" {
    name = join("/", ["/ecs", local.service_name])
    retention_in_days = var.log_retention

    tags = {
        Svc = local.service_name
        Environment = terraform.workspace
        Retention = var.log_retention
    }
}

output "log_group" {
    value = aws_cloudwatch_log_group.logs.name
}