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
  description = "Name  (e.g. `application name`)"
}

variable "resource_version" {
  type = string
  default = "1"
  description = "Version of the resource."
}

variable "tags" {
  type        = map(string)
  default     = {}
}