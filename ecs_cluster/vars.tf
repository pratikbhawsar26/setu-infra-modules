variable "product_name" {
  type        = string
  description = "Namespace (e.g. `Fastag` or `Customer Product`)"
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
  description = "Tags of the service"
  default = {}
}

