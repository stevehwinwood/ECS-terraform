
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

variable "max_size" {
  default     = 1
  description = "Maximum size of the nodes in the cluster"
}

variable "min_size" {
  default     = 1
  description = "Minimum size of the nodes in the cluster"
}

variable "desired_capacity" {
  default     = 1
  description = "The desired capacity of the cluster"
}

variable "private_subnet_ids" {
  type        = "list"
  description = "The list of private subnets to place the instances in"
}

