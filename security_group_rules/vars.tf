variable "ingress_rules" {
    type = list(object({
      from_port   = number
      to_port     = number
      type        = string
      protocol    = string
      cidr_blocks  = list(string)
      description = string
    }))
}

variable "egress_rules" {
    type = list(object({
      from_port   = number
      to_port     = number
      type        = string
      protocol    = string
      cidr_blocks  = list(string)
      description = string
    }))
}

variable "security_group_id" {
  type        = string
  description = "Security group ID"
}