module "env-product" {
  source       = "../env_product_mapping"
  product_name = var.product_name
  env          = var.env
  name         = var.name
  tags         = var.tags
}

###########################################################################################################
### Prerequisite:
###    1. Create Security Group, pass as list of ids
###    2. Create Parameter Group, pass name of the group
###    3. Create Subnet Group, pass name of the group
### NOTE:
###   pass `null` value if you don't want to pass any value in optinal
###   params.
### Resource Doc: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance
###########################################################################################################

resource "aws_db_instance" "db_instance" {

  identifier                  = lower("${module.env-product.id}")
  deletion_protection         = var.deletion_protection
  skip_final_snapshot         = var.skip_final_snapshot
  allow_major_version_upgrade = var.allow_major_version_upgrade
  auto_minor_version_upgrade  = var.auto_minor_version_upgrade
  final_snapshot_identifier   = lower("${module.env-product.id}-backup")
  engine                      = var.engine
  engine_version              = var.engine_version
  storage_encrypted           = var.storage_encrypted
  backup_window               = var.backup_window
  maintenance_window          = var.maintenance_window
  port                        = var.port
  instance_class              = var.instance_class
  allocated_storage           = var.allocated_storage
  storage_type                = var.storage_type
  db_name                     = var.db_name
  username                    = var.username
  password                    = var.password
  vpc_security_group_ids      = var.vpc_security_group_ids
  db_subnet_group_name        = var.db_subnet_group_name
  availability_zone           = var.availability_zone
  multi_az                    = var.multi_az
  publicly_accessible         = var.publicly_accessible
  monitoring_interval         = var.monitoring_interval
  backup_retention_period     = var.backup_retention_period
  ca_cert_identifier          = var.ca_cert_identifier
  parameter_group_name        = var.parameter_group_name
  tags                        = merge(var.tags, { "Name" : lower("${module.env-product.id}") })
}
