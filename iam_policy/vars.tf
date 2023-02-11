variable "product_name" {
  type        = string
  description = "Namespace (e.g. `Fastag` or `Customer Product`)"
}

variable "env" {
  type        = string
  description = "e.g. `prod`, `dev`, `env`)"
}

variable "name" {
  type        = string
  description = "Namespace (e.g. `Fastag` or `Customer Product`)"
}

variable "tags" {
  type        = map(string)
}

variable "iam_policy_doc_json" {
  type        = string
  description = "JSON of iam policy document"
}