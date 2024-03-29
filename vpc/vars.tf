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
  description = "Name  (e.g. Name of the VPC)"
}

variable "tags" {
  type        = map(string)
  default     = {}
}

variable "cidr_block" {
  type        = string
  description = "(Required) CIDR block for VPC"
}

variable "enable_dns_support" {
  type        = string
  default     = true
  description = "(Optional) Enable/Disable DNS support in VPC"
}

variable "enable_dns_hostnames" {
  type        = string
  default     = true
  description = "(Optional) Enable/Disable DNS hostnames in VPC"
}

variable "assign_generated_ipv6_cidr_block" {
  type        = string
  default     = false
  description = "(Optional) Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC"
}