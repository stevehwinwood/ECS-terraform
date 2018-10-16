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
  #key_name = "${aws_key_pair.ecs.key_name}"
  aws_ami = "ami-0209769f0c963e791"
  #iam_instance_profile = "${aws_iam_instance_profile.ecs.id}"

  #Add instance_profile and key_name stuff to the ecs module (or pre reqs module)
  private_subnet_ids = ["subnet-0d8da9334a0796bd1","subnet-0be22c1069c98b4b7","subnet-001963985b2b9ee28"]

}
