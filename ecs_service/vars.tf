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

variable "cluster" {
    type = string
    description = "ARN of an ECS cluster"
  
}

variable "task_definition" {
    type = string
    description = "full ARN of the task definition that you want to run in your service"
  
}

variable "launch_type" {
  type = string
  description = "Launch type on which to run your service"
  default = "FARGATE"

}

variable "scheduling_strategy" {
    type = string
    description = "Scheduling strategy to use for the service"
    default = "REPLICA"
  
}

variable "desired_count" {
    type = number
    description = "Number of instances of the task definition to place and keep running"
    default = 1
  
}

variable "force_new_deployment" {
    type = bool
    description = " Enable to force a new task deployment of the service"
    default = true
  
}

variable "private_subnet" {
  description = "Private subnet for ECS Service"
  type = string
  
}

variable "service_security_group" {
  description = "Security group to attach with ecs service"
  type = string
  
}

variable "lb_security_group" {
  description = "Security group to attach with lb of ecs service"
  type = string
  
}

variable "target_group_arn" {
  description = "Target Group ARN"
  type = string
  
}

variable "container_name" {
  description = "Container Name"
  type = string
  
}

variable "container_port" {
  description = "Container Port"
  type = number
  default = 8080
  
}