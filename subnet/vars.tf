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
  description = "Name  (e.g. Name of the subnet)"
}

variable "tags" {
  type        = map(string)
}

variable "availability_zone" {
  type        = string
  description = "Availability zone"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "cidr_block" {
  type        = string
  description = "CIDR block"
}

variable "map_public_ip_on_launch" {
  type        = string
  description = "Public IP on launch"
}