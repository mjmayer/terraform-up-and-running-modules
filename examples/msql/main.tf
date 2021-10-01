terraform {
  required_version = ">1.0, < 1.1"
}

provider "aws" {
  region = "us-west-2"
}

module "mysql" {
  source = "../../modules/data-stores/mysql"

  db_name     = var.db_name
  db_username = var.db_username
  db_password = var.db_password
}
