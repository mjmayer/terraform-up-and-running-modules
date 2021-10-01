
variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_username" {
  description = "The username for the database"
  type        = string
}

variable "db_password" {
  type        = string
  default     = "asdf12345"
  description = "Password for mysql instance"
}
