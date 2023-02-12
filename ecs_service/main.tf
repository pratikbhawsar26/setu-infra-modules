module "env-product" {
  source        = "../env_product_mapping"
  product_name  = var.product_name
  env           = var.env
  name          = var.name
  tags          = var.tags
}

resource "aws_ecs_service" "setu" {
  name                                  = var.name
  cluster                               = var.cluster
  task_definition                       = var.task_definition
  launch_type                           = var.launch_type
  scheduling_strategy                   = var.scheduling_strategy
  desired_count                         = var.desired_count
  force_new_deployment                  = var.force_new_deployment
  network_configuration {
    subnets           = var.private_subnets
    assign_public_ip  = false
    security_groups   = [
      var.service_security_group,
      var.lb_security_group
    ]
  }
  load_balancer {
    target_group_arn = var.target_group_arn
    container_name   = var.container_name
    container_port   = var.container_port
  }
  
}