module "env-product" {
  source        = "../env_product_mapping"
  product_name  = var.product_name
  env           = var.env
  name          = var.name
  tags          = var.tags
}


resource "aws_ecs_cluster" "aws-ecs-cluster" {
  name = "${var.name}"
  tags = {
    Name        = "${var.name}"
    Environment = var.env
  }
}