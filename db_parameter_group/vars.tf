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
  description = "Name  (e.g. `db parameter name`)"
}

variable "tags" {
  type        = map(string)
}

variable "family" {
  type        = string
  description = "The family of the DB parameter group"
}

variable "parameters" {
  type        = list(any)
  description = "A list of DB parameters to apply"
}

variable "apply_method" {
  type        = string
  description = "Apply method i.e. immediate, pending-reboot"
  default     = "immediate"
}