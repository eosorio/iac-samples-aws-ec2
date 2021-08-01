variable "environment" {
  description     = "Environment to deploy"
  type            = string
}

variable "vpc_id" {
  description    = "The VPC ID for this Security Group"
  type           = string

  validation {
    condition     = can(regex("^vpc-", var.vpc_id))
    error_message = "Invalid VPC ID. It should start with \"vpc-\"."
  }
}
