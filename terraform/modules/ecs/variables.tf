
variable environment {
    description = "Environment to deploy ECS to"
}

variable cluster {
    description = "ECS cluster name"
}

variable instance_group {
    description = "Grouping the instances together"
}

variable vpc_id {
    description = "ID of the VPC to deploy the ECS cluster into"
}

variable "aws_ami" {
    description = "AMI ID to create the cluster hosts from"
}

variable "instance_type" {
    description = "Instance size for the cluster hosts"
    default = "t2.micro"
}

#variable "iam_instance_profile" {
 # description = "The id of the instance profile that should be used for the instances"
#}

#variable "key_name" {
 # description = "SSH key name to be used"
#}

