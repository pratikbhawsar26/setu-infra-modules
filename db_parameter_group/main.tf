module "env-product" {
  source    = "../env_product_mapping"
  product_name = var.product_name
  env       = var.env
  name      = var.name
  tags      = var.tags
}

resource "aws_db_parameter_group" "parameter_group" {
  name   = lower(module.env-product.id)
  family = var.family

  dynamic "parameter" {
    for_each = var.parameters

    content {
      name   = parameter.value["name"]
      value  = parameter.value["value"]
      apply_method = parameter.value["apply_method"]
    }
  }
}