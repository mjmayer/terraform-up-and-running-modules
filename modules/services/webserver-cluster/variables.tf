variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}
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

variable "custom_tags" {
  description = "Custom tags to set on the instances in the ASG"
  type        = map(string)
  default     = {}
}

variable "enable_autoscaling" {
  description = "Enable autoscaling on the ASG"
  default     = false
}