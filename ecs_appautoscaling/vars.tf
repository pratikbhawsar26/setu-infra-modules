variable "product_name" {
  type        = string
  description = "Namespace (e.g. `Falcon` or `Magicleap`)"
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

variable "max_capacity" {
    type = number
    description = "The max capacity of the scalable target"
    default = 2
  
}

variable "min_capacity" {
    type = number
    description = "The min capacity of the scalable target"
    default = 1
  
}

variable "resource_id" {
    type = string
    description = "The resource type and unique identifier string for the resource associated with the scaling policy"
  
}

variable "scalable_dimension" {
    type = string
    description = "The scalable dimension of the scalable target"
  
}

variable "service_namespace" {
    type = string
    description = "The AWS service namespace of the scalable target"
  
}