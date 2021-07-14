# iac-samples-aws-ec2
Infrastructure as Code Sample: AWS EC2 shared resources

These are sample files for defining key pairs, security groups and other shared components usually found under the EC2 section on the AWS console.

## Setup
* Set your AWS_PROFILE env variable
* Set your AWS keys for the selected profile
* Fill the values on awsprofile.tfvars
* (Optional) If you already have a working remote state file, specify the backend in backend.tf . For example:
```
terraform {
  backend "s3" {
    bucket                 = "my-s3-unique-bucket-name"
    dynamodb_table         = "terraform-state-lock-dynamo"
    key                    = "terraform/iac-samples-aws-ec2.tfstate"
    region                 = "us-east-1"
  }
}
```
* Terraform validate/plan/apply
```
terraform plan -var-file=awsprofile.tfvars
```
