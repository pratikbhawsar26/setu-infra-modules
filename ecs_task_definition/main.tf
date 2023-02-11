module "env-product" {
  source        = "../env_product_mapping"
  product_name  = var.product_name
  env           = var.env
  name          = var.name
  tags          = var.tags
}



resource "aws_ecs_task_definition" "aws-ecs-task" {
  family                    = var.family
  # container_definitions     = var.container_definitions
  requires_compatibilities  = var.requires_compatibilities
  network_mode              = var.network_mode
  memory                    = var.memory
  cpu                       = var.cpu
  execution_role_arn        = var.execution_role_arn
  task_role_arn             = var.task_role_arn
  tags                      = var.tags
  container_definitions = <<DEFINITION
  [
    {
      "name": "${var.container_name}",
      "image": "${var.image}",
      "entryPoint": [],
      "essential": true,
      "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "${var.log_group}",
          "awslogs-region": "${var.region}",
          "awslogs-stream-prefix": "${var.name}-${var.env}"
        }
      },
      "portMappings": [
        {  
          "containerPort": ${var.port},
          "hostPort": ${var.port}
        }
      ],
      "cpu": ${var.cpu},
      "memory": ${var.memory},
      "networkMode": "${var.network_mode}"
    }
  ]
  DEFINITION
}



