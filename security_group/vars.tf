variable "ingress_rules" {
    type = list(object({
      from_port   = number
      to_port     = number
      type        = string
      protocol    = string
      description = string
      cidr_blocks = optional(list(string))
      ipv6_cidr_blocks = optional(list(string))
      prefix_list_ids = optional(list(string))
      security_groups = optional(list(string))
    }))
}

variable "egress_rules" {
    type = list(object({
      from_port   = number
      to_port     = number
      type        = string
      protocol    = string
      description = string
      cidr_blocks = optional(list(string))
      ipv6_cidr_blocks = optional(list(string))
      prefix_list_ids = optional(list(string))
      security_groups = optional(list(string))
    }))
}

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
  description = "Name  (e.g. Name of the security group)"
}

variable "tags" {
  type = map(string)
  description = "Tags"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}
