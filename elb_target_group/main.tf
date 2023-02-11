module "env-product" {
  source            = "../env_product_mapping"
  product_name      = var.product_name
  env               = var.env
  name              = var.name
  tags              = var.tags
}

resource "aws_lb_target_group" "target_group" {
    name            = module.env-product.id
    port            = var.port
    target_type     = var.target_type
    protocol        = var.protocol
    vpc_id          = var.vpc_id
    tags            = merge(var.tags,{
                        Name = "${module.env-product.id}"
                    })
    dynamic "health_check" {
        for_each = var.target_health_check
        content {
            enabled             = health_check.value["enabled"]
            healthy_threshold   = health_check.value["healthy_threshold"]
            interval            = health_check.value["interval"]
            path                = health_check.value["path"]
            port                = health_check.value["port"]
            protocol            = health_check.value["protocol"]
            unhealthy_threshold = health_check.value["unhealthy_threshold"]
        }
    }
}