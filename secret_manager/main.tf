module "blue-green" {
  source        = "../blue_green"
  product_name  = var.product_name
  env           = var.env
  name          = var.name
  tags          = var.tags
}

locals {
  commonTags = {
    Name = module.blue-green.id
  }
}

resource "aws_secretsmanager_secret" "secret" {
  name        = lower(module.blue-green.id)
  tags        = merge(var.tags, local.commonTags)
  recovery_window_in_days = 0  
}

### Secrets to be added manually
#resource "aws_secretsmanager_secret_version" "secrets" {
#  secret_id     = aws_secretsmanager_secret.secret.id
#  secret_string = jsonencode(var.secrets_keys)
#  depends_on = [
#    aws_secretsmanager_secret.secret
#  ]
#}
