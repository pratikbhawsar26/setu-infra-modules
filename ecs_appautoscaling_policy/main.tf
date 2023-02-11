module "env-product" {
  source        = "../env_product_mapping"
  product_name  = var.product_name
  env           = var.env
  name          = var.name
  tags          = var.tags
}

resource "aws_appautoscaling_policy" "ecs_policy" {
  name                        = var.name
  policy_type                 = var.policy_type
  resource_id                 = var.resource_id
  scalable_dimension          = var.scalable_dimension
  service_namespace           = var.service_namespace
  target_tracking_scaling_policy_configuration {
    predefined_metric_specification {
      predefined_metric_type  = var.predefined_metric_type
    }

    target_value              = var.target_value
  }  
  

}