variable "aws_region" {
  description = "AWS region"
  default = "us-east-1"
}

variable "availability_zones" {
  description = "List of availability zones to use"
  type = list
  default = ["us-east-1a", "us-east-1b"]
}

variable "keypair_name" {
  default = "testenv-key"
}

variable "aws_profile" {
  description = "AWS profile name to use"
}

variable "instance_type" {
    description = "EC2 instance type"
    type        = list(string)
    default     = ["t2.micro", "t3.micro"]
}