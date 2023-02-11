module "env-product" {
  source        = "../env_product_mapping"
  product_name  = var.product_name
  env           = var.env
  name          = var.name
  tags          = var.tags
}


resource "aws_iam_policy" "iam_policy" {
  name          = module.env-product.id
  policy        = var.iam_policy_doc_json
}