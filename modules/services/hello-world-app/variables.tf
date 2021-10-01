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
  type = string
}
