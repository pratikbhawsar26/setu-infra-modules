variable "product_name" {
  type        = string
  description = "Namespace (e.g. `Fastag` or `Customer product`)"
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

variable "policy_type" {
    type = string
    description = "The Policy Type"
    default = "TargetTrackingScaling"
  
}

variable "resource_id" {
    type = string
    description = "The resource type and unique identifier string for the resource associated with the scaling policy"

  
}

variable "scalable_dimension" {
    type = string
    description = " The scalable dimension of the scalable target"
  
}

variable "service_namespace" {
    type = string
    description = "The AWS service namespace of the scalable target"
  
}

variable "predefined_metric_type" {
  description = "predefined metric type"
  type = string
}

variable "target_value" {
  description = "target port"
  type = number
  
}