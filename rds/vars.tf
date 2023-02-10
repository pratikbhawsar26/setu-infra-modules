variable "product_name" {
  type        = string
  description = "product_name (e.g. `Fastag` or any customer product)"
}

variable "env" {
  type        = string
  description = "env (e.g. `prod`, `dev`, `staging`, `infra`)"
}

variable "name" {
  type        = string
  description = "Name  (e.g. Name of the RDS)"
}

variable "tags" {
  type = map(string)
}

variable "family" {
  type        = string
  description = "The family of the DB parameter group"
}

variable "apply_method" {
  type        = string
  description = "Apply method i.e. immediate, pending-reboot"
  default     = "immediate"
}

variable "deletion_protection" {
  type        = bool
  description = "Enable deletion protection"
}

variable "allow_major_version_upgrade" {
  type        = bool
  description = "Allow major version upgradion"
}

variable "auto_minor_version_upgrade" {
  type        = bool
  description = "Allow auto minor version upgradion"
}

variable "skip_final_snapshot" {
  type        = bool
  description = "Skip snapshot creation after deletion operation"
}

variable "final_snapshot_identifier" {
  type        = string
  description = "Final db snapshot identifier"
}

variable "engine" {
  type        = string
  description = "Engine name for the RDS, i.e. "
}

variable "engine_version" {
  type        = string
  description = "Engine version"
}

variable "storage_encrypted" {
  type        = bool
  description = "Enable storage encryption"
}

variable "backup_window" {
  type        = string
  description = "Backup window in format 00:00-00:00"
}

variable "maintenance_window" {
  type        = string
  description = "Maintenance window in format Mon:00:00-Mon:03:00"
}

variable "port" {
  type        = number
  description = "Port number for the db."
  default     = 3306
}

variable "instance_class" {
  type        = string
  description = "Instance type for the instance"
}

variable "allocated_storage" {
  type        = number
  description = "Allocated storage space in gb"
}

variable "storage_type" {
  type        = string
  description = "Type of the storage, i.e. `gp2`"
}

variable "db_name" {
  type        = string
  description = "Name of the intial db"
  default     = "demo-db"
}

variable "username" {
  type        = string
  description = "Master user name for the db"
}

variable "password" {
  type        = string
  description = "Master user's password for the db"
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "List of security groups which are going to be associated with the db"
}

variable "db_subnet_group_name" {
  type        = string
  description = "Subnet group name which needs to be used by the db"
}

variable "availability_zone" {
  type        = string
  description = "Availability zone name"
}

variable "multi_az" {
  type        = bool
  description = "Enable multi AZ for the RDS"
}

variable "publicly_accessible" {
  type        = bool
  description = "Enable public accessibility"
}

variable "monitoring_interval" {
  type        = number
  description = "The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. Valid Values: 0, 1, 5, 10, 15, 30, 60"
}

variable "backup_retention_period" {
  type        = number
  description = "The days to retain backups for. Must be between 0 and 35"
}

variable "ca_cert_identifier" {
  type        = string
  description = "The identifier of the CA certificate for the DB instance."
}

variable "parameter_group_name" {
  type        = string
  description = "Name of the DB parameter group to associate."
  default     = "default.mysql5.7"
}
