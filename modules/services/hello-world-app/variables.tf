variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the databases remote state"
  type        = string
}
variable "db_remote_state_key" {
  description = "The path for the database's remote state in S3"
  type        = string
}
variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}
variable "environment" {
  description = "The name of the environment we're deploying to"
  type        = string
}

variable "ami" {
  description = "AMI ID of the EC2 instance"
  type        = string
}

variable "cluster_name" {
  description = "name of the autoscaling group cluster name"
  default     = "hello-world"
}

variable "user_data" {
  description = "File ran on startup of app"
}

variable "instance_type" {
  description = "Instance type"
  default     = "t3.nano"
}

variable "min_size" {
  description = "number of instances in ASG"
  default     = 2
}

variable "max_size" {
  description = "Max number of instances in ASG"
  default     = 2
}

variable "enable_autoscaling" {
  description = "Bool to enable autoscaling during business hours"
  default     = false
}

variable "server_text" {
  description = "Text to output on the webserver index.html"
  default     = "Hello, World!"
}
