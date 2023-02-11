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

# variable "container_definitions" {
#     type = string
#     description = "A list of valid container definitions provided as a single valid JSON document"
  
# }

variable "requires_compatibilities" {
    type = list(string)
    description = "Set of launch types required by the task"
    default = ["FARGATE"]
  
}

variable "network_mode" {
    type = string
    description = "Docker networking mode to use for the containers in the task"
    default = "awsvpc"
  
}

variable "memory" {
    type = string
    description = "Amount (in MiB) of memory used by the task"
    default = "512"
  
}

variable "cpu" {
    type = string
    description = "Number of cpu units used by the task"
    default = "256"
  
}

variable "execution_role_arn" {
    type = string
    description = "ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume"
  
}

variable "task_role_arn" {
    type = string
    description = "ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services"
  
}

variable "family" {
  type = string
  description = "A unique name for your task definition"
  
}

variable "container_name" {
  description = "Name of container"
  type = string
  
}

variable "image" {
  description = "Image of ECR Repo"
  type = string
  
}

variable "port" {
  description = "Container and Host Port"
  type = number
  
}

variable "log_group" {
  description = "Log Group name"
  type = string
  
}

variable "region" {
  description = "Region of Log Group"
  type = string
  
}

