variable "alb_name" {
  description = "The name to use for this ALB"
  type        = string
}

variable "http_port" {
  description = "Port for the ALB to listen on"
  default     = 80
}

variable "subnet_ids" {
  description = "The subnet IDs to deploy to"
  type        = list(string)
}
