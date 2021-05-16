resource "aws_ecr_repository" "repository" {
    name = lower(var.service_name)
    image_scanning_configuration {
        scan_on_push = true
    }
}

resource "aws_ecr_lifecycle_policy" "image_policy" {
    repository = aws_ecr_repository.repository.name
    policy = jsonencode(
        {
            rules = [
            {
                rulePriority = 1
                description = join(" ", ["Expire images older than", tostring(var.retention) ,"days"])
                selection = {
                  tagStatus = "untagged"
                  countType = "sinceImagePushed"
                  countUnit = "days"
                  countNumber = var.retention
                }
                
                action = {
                    type = "expire"
                }
            }
        ]
        }
    )
}


output "repository_url" {
    value = aws_ecr_repository.repository.repository_url
}