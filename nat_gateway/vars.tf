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
  description = "Name  (e.g. Name of the Nat Gateway)"
}

variable "tags" {
  type        = map(string)
}

variable "public_subnet" {
  type        = string
  description = "Public Subnet"
}