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

variable "internal" {
  type = string
  description = "If true, the LB will be internal."
}

variable "load_balancer_type" {
  type = string
  description = "The type of load balancer to create."
}

variable "security_groups" {
  type = list
  description = "A list of security group IDs to assign to the LB."
  default = []
}

variable "enable_deletion_protection" {
  type = string
  default = "true"
}

variable "idle_timeout" {
  type = number
  description = "The time in seconds that the connection is allowed to be idle. Only valid for Load Balancers of type application. Default: 60."
}

variable "subnets" {
  type = list
  description = "subnets"
}