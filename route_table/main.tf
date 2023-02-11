module "env-product" {
  source    = "../env_product_mapping"
  product_name = var.product_name
  env     = var.env
  name      = var.name
  tags      = var.tags
}

locals {
  commonTags = {
    Name = module.env-product.id
  }
}

resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id
  tags   = merge(var.tags, local.commonTags)
}