module "env-product" {
  source    = "../env_product_mapping"
  product_name = var.product_name
  env     = var.env
  name      = var.name
  tags      = var.tags
}

resource "aws_eip" "allocation" {
  vpc = true
}

locals {
  commonTags = {
    Name = module.env-product.id
  }
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id       =     "${aws_eip.allocation.id}"
  subnet_id           =     "${var.public_subnet}"
  tags                =     merge(var.tags, local.commonTags)
}