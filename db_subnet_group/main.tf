module "env-product" {
  source    = "../env_product_mapping"
  product_name = var.product_name
  env       = var.env
  name      = var.name
  tags      = var.tags
}

resource "aws_db_subnet_group" "db_subnet_group" {
  subnet_ids = [
    var.public_restricted_subnet_a,
    var.public_restricted_subnet_b
  ]

  name       = lower(module.env-product.id)
  tags       = merge(var.tags,{
    Name     = lower(module.env-product.id)
  })
}