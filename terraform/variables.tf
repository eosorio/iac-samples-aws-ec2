#--- root variables.tf

# AWS environment
variable "aws_profile" {}
variable "aws_shared_credentials_file" {}
variable "aws_region" {}

variable "environment" {
  description     = "Environment to deploy"
  type            = string
}

variable "vpc_id" {
  type           = string
}
