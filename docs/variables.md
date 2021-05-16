# Variaveis

## Variaveis de WorkSpace

---
### aws_region
Supported values: (default/dev/staging/prod)

Description: AWS Region

```
default: us-east-2
homolog: us-east-2
prod: us-east-1
```
---

### vpc
Supported values: (default/dev/staging/prod)

Description: VPC ID.

---

### ecs_cluster
Supported values: (default/dev/staging/prod)

Description: Cluster name affeted.


___


## Variaveis de aplicação

---
### service_name
Default:

Description: Name of service, ECR repository and taskdefinition family

Supported values: Strings.

---

### task_cpu
Default: 0

Description: CPU limits.

Supported values:  0 to 1024

---

### task_memory
Default: 128

Description: Soft memory limit to containers


Supported values: Integers

---

### task_number
Default: 1

Description: Running task numbers.


Supported values: Integers

---

### environment
Default:

Description: Environments variables

---

### retention
Default: 15

Description: Retention for images on ECR

Supported values: 0 to 30

---

### log_retention
Default: 30

Description: Retention for cloudwatch log group.

Supported values: Integers

---