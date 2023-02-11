variable "product_name" {
  type        = string
  description = "Namespace (e.g. `Falcon` or 'Magicleap' or 'Tech-Marketing')"
}

variable "env" {
  type        = string
  description = "e.g. `prod`, `dev`, `stage`)"
}

variable "name" {
  type        = string
  description = "Name of the resource"
}

variable "tags" {
  type        = map(string)
  description = "Tags for the resource"
}

variable "port" {
  type = number
  description = "Port on which targets receive traffic, unless overridden when registering a specific target."
}

variable "target_type" {
  type = string
  description = "Type of target that you must specify when registering targets with this target group."
}

variable "protocol" {
  type = string
  description = "Protocol to use for routing traffic to the targets."
}

variable "vpc_id" {
  type = string
  description = "Identifier of the VPC in which to create the target group."
}

variable "target_health_check" {
  type        = list(map(string))
  description = "target_health_check"
  default     = []
}