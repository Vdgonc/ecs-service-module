variable "service_name" {
    type = string
    description = "ECS service name"
}

variable "task_cpu" {
    type = number
    description = "CPU units"
    default = 0
}

variable "task_memory" {
    type = number
    description = "Task memory in Mb"
    default = 128
}

variable "task_number" {
    type = number
    description = "Task number in service"
    default = 1
}

variable "environment" {
    type = list(object({ name = string, value = string }))
    description = "Environment variables in task definition"
    default = []
}

variable "retention" {
    type = number
    description = "ECR untagged image retention in days"
    default = 15
}

variable "log_retention" {
    type = number
    description = "Cloudwatch loggroup retention in days"
    default = 30
}
