variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}

variable "ami" {
  description = "The AMI to run in the cluster"
  default     = "ami-0ceee60bcb94f60cd"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t3.micro)"
  type        = string
}

variable "min_size" {
  description = "The miniumu number of EC2 isntances int he ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum number of EC2 instances in the ASG"
  type        = number
}

variable "enable_autoscaling" {
  description = "Enable autoscaling on the ASG"
  default     = false
}

variable "custom_tags" {
  description = "Custom tags to set on the instances in the ASG"
  type        = map(string)
  default     = {}
}

variable "server_text" {
  description = "The text the web server should return"
  default     = "Hello, World"
  type        = string
}

variable "subnet_ids" {
  description = "The subnet IDs to deploy to"
  type        = list(string)
}

variable "target_group_arns" {
  description = "The ARNs of the ELB target groups in which to register Instances"
  type        = list(string)
  default     = []
}

variable "health_check_type" {
  description = "The type of health check to permform must be one of: EC2, ELB."
  type        = string
  default     = "EC2"
}

variable "user_data" {
  type        = string
  description = "The User data script to run in each Instance at boot"
  default     = null
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}
