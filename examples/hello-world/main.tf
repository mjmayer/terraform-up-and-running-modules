provider "aws" {
  region = "us-west-2"
}

terraform {

}

module "app" {
  source      = "github.com/mjmayer/terraform-up-and-running-modules//modules/services/hello-world-app?ref=v0.0.34"
  environment = "dev"

  ami         = "ami-090717c950a5c34d3"
  server_text = "New server text"

  instance_type      = "t3.micro"
  min_size           = 2
  max_size           = 2
  enable_autoscaling = false
}
