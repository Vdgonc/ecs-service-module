resource "aws_ecs_task_definition" "task_definition" {
    family = local.service_name
    requires_compatibilities = ["EC2"]

    container_definitions = jsonencode(
        [
            {
                name = local.service_name
                image = join(":", [aws_ecr_repository.repository.repository_url, "latest"])

                cpu = var.task_cpu
                
                memoryReservation = var.task_memory

                logConfiguration = {
                    logDriver = "awslogs"
                    options = {
                        "awslogs-group" = aws_cloudwatch_log_group.logs.name
                        "awslogs-region"        = local.region
                        "awslogs-stream-prefix" = "ecs"
                    }
                }

                environment = local.environment == "[]" ? null : local.environment
                mountPoints = []
                volumesFrom = []
                entryPoint = []
            }
        ]
    )
}


output "revision" {
    value = aws_ecs_task_definition.task_definition.revision
}

output "task_definition_arn" {
    value = aws_ecs_task_definition.task_definition.arn
}