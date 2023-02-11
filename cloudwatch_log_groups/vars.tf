variable "group_name" {
  type        = string
  description = "Log groups are log streams storing logs from a particular AWS service"
}

variable "tags" {
  type        = map(string)
  default     = {}
}
