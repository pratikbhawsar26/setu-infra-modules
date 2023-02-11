variable "product_name" {
  type        = string
  description = "product_name (e.g. `Fastag` or any customer product)"
}

variable "env" {
  type        = string
  description = "env (e.g. `prod`, `dev`, `staging`, `test`)"
}

variable "name" {
  type        = string
  description = "Name  (e.g. `db subnet group name`)"
}

variable "tags" {
  type        = map(string)
}

variable "rds_private_subnet_a" {
  type = string
  description = "Publicly restricted subnet id"
}

variable "rds_private_subnet_b" {
  type = string
  description = "Publicly restricted subnet id"
}