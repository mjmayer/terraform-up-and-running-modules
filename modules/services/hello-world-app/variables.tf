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

variable "custom_tags" {
  description = "Custom tags to set on the instances in the ASG"
  type        = map(string)
  default     = {}
}

variable "db_name" {
  description = "Name of the mysql database for the hello-world app"
  default     = "hello_world"
}

variable "vpc_id" {
  description = "The ID of the VPC to deploy into"
  type = string
  default = null
}

variable "subnet_ids" {
  description = "The IDs of the subnets to deploy into"
  type = list(string)
  default = null
}

variable "mysql_config" {
  description = "The config for the MySQL Db"
  type = object({
    address = string
    port = number
  })
  default = null
}
