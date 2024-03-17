variable "load_balancer_name" {
  description = "The name of the load balancer"
  type        = string
}

variable "target_group_port" {
  description = "The port of the target group"
  type        = number
}

variable "region" {
  type    = string
  default = "us-east-1"
}

