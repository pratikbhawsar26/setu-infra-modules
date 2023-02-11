variable "target_group_arn" {
  type        = string
  description = "target_group_arn"
}

variable "aws_instance_id" {
  description = "List of instance id needs to be registered"
  type        = list(string)
}

variable "port" {
  type = number
  description = "port"
}

