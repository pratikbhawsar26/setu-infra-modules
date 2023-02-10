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
  description = "Name  (e.g. Name of the Internet Gateway)"
}

variable "tags" {
  type        = map(string)
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}
