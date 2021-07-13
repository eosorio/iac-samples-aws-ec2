#--- root main.tf

locals {
  repo_url            = "https://github.com/eosorio/iac-samples-aws-ec2"
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

// Debugging which is the current region
data "aws_region" "current" {}
output my_region {
  value = data.aws_region.current.name
}

data "aws_vpc" "my_vpc" {
  id = var.vpc_id
}

