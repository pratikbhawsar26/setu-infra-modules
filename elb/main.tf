module "env-product" {
  source                                = "../env_product_mapping"
  product_name                          = var.product_name
  env                                   = var.env
  name                                  = var.name
  tags                                  = var.tags
}

resource "aws_lb" "load_balancer" {
    name                                = module.env-product.id
    internal                            = var.internal
    load_balancer_type                  = var.load_balancer_type
    security_groups                     = var.security_groups
    subnets                             = var.subnets
    enable_deletion_protection          = var.enable_deletion_protection
    idle_timeout                        = var.idle_timeout
    tags    = merge(var.tags,{
        Name = "${module.env-product.id}-${var.name}"
    })
}