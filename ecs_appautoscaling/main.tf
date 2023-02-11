module "env-product" {
  source                = "../env_product_mapping"
  product_name          = var.product_name
  env                   = var.env
  name                  = var.name
  tags                  = var.tags
}

resource "aws_appautoscaling_target" "ecs_target" {
  max_capacity          = var.max_capacity
  min_capacity          = var.min_capacity
  resource_id           = var.resource_id
  scalable_dimension    = var.scalable_dimension
  service_namespace     = var.service_namespace
}