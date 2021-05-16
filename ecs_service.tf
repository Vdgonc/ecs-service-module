resource "aws_ecs_service" "service" {
    name = local.service_name
    cluster = data.aws_ecs_cluster.cluster.arn
    task_definition = aws_ecs_task_definition.task_definition.arn
    desired_count = var.task_number
    launch_type = "EC2"
}


output "service" {
    value = aws_ecs_service.service.name
}

output "service_arn" {
    value = aws_ecs_service.service.id
}