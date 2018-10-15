provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region = "eu-west-2"
}

module "ecs" {
  source = "../modules/ecs"

  environment = "dev"
  cluster = "steve-terraform"
  instance_group = "dev-instances"
  vpc_id = "vpc-0eea939985b63f87e"
}
