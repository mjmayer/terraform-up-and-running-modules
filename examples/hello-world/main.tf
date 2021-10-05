provider "aws" {
  region = "us-west-2"
}

terraform {

}

module "app" {
  source      = "github.com/mjmayer/terraform-up-and-running-modules//modules/services/hello-world-app"
  environment = "test"

  ami         = "ami-090717c950a5c34d3"
  server_text = "Hello, World"

  # Pass all outputs from the myself module to app module. Used for testing
  mysql_config = var.mysql_config

  instance_type      = "t3.micro"
  min_size           = 2
  max_size           = 2
  enable_autoscaling = false
}

module "alb" {
  source      = "github.com/mjmayer/terraform-up-and-running-modules//modules/networking/alb"

  alb_name   = "hello-world-${var.environment}"
  subnet_ids = local.vpc_id
}

module "mysql" {
  source      = "github.com/mjmayer/terraform-up-and-running-modules//modules/data-stores/mysql"

  db_name = var.db_name
}
