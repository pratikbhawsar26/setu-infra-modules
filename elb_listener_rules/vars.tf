variable "https_listener_arn" {
  type        = string
  description = "https_listener_arn"
}

variable "priority" {
  type        = number
  description = "priority"
  default = 100
}

variable "action_type" {
  type        = string
  description = "action_type"
  default = "forward"
}

variable "target_group_arn" {
  type = string
  description = "target_group_arn"
}

variable "hostheader" {
  type = list(string)
  description = "hostheader"
}