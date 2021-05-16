# ECS Service - Module

## Requirements
* Vault Server
* AWS secrets to create assumed roles
* Vault token in environment variables `export VAULT_TOKEN=YOURTOKEN`


[Variaveis](docs/variables.md)

## Example

* main.tf

```hcl

module "app" {
    
    source = ""

    # Service name
    service_name = "app-teste"

    # Running task number
    task_number = 1

    # CPU limits
    task_cpu = 0

    # Soft Memory limits
    task_memory = 64

    # Environments vars
    environment = [
        { name = "app_name", value = "test" },
        { name = "database_url", value = "sqlite:///tmp/database.db" }
    ]
}

```