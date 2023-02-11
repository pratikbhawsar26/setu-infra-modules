variable "lb_arn" {
  type = string
  description = "The arn of LB to be used"
}

variable "name" {
  type = string
  description = "lb_listener_name"
}

variable "http_listner_target_port" {
  type = number
  description = "http_listner_target_port"
}

variable "http_listner_target_protocol" {
  type = string
  description = "http_listner_target_protocol"
}

variable "http_listner_action_type" {
  type = string
  description = "http_listner_action_type"
}

variable "https_listner_target_port" {
  type = number
  description = "https_listner_target_port"
}

variable "https_listner_target_protocol" {
  type = string
  description = "https_listner_target_protocol"
}

variable "https_listner_ssl_policy" {
  type = string
  description = "https_listner_ssl_policy"
  default = null
}

variable "https_listner_certificate_arn" {
  type = string
  description = "https_listner_certificate_arn"
  default = null
}

variable "https_listner_action_type" {
  type = string
  description = "https_listner_action_type"
}

variable "http_listner_redirect" {
  type        = list(map(string))
  description = "http_listner_redirect"
  default     = []
}

variable "http_listner_tg_arn" {
  type        = string
  description = "http_listner_tg_arn"
  default     = null
}

variable "https_listner_fixed_response" {
  type        = list(map(string))
  description = "https_listner_fixed_response"
  default     = []
}

variable "https_listner_tg_arn" {
  type        = string
  description = "https_listner_tg_arn"
  default     = null
}