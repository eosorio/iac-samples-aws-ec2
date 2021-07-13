#--- root main.tf

locals {
  repo_url            = "https://github.com/eosorio/iac-samples-aws-ec2"
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}