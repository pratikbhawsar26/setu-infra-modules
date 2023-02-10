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

resource "aws_vpc" "vpc" {
  cidr_block                       = var.cidr_block
  instance_tenancy                 = "default"
  enable_dns_support               = var.enable_dns_support
  enable_dns_hostnames             = var.enable_dns_hostnames
  assign_generated_ipv6_cidr_block = var.assign_generated_ipv6_cidr_block
  tags                             = merge(var.tags, local.commonTags)
}