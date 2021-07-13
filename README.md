# iac-samples-aws-ec2
Infrastructure as Code Sample: AWS EC2 shared resources

These are sample files for defining key pairs, security groups and other shared components usually found under the EC2 section on the AWS console.

## Deploying
### In Terraform
* Set your AWS_PROFILE env variable
* Set your AWS keys for that profile
* Fill the values on awsprofile.tfvars
* Terraform validate/plan/apply
```
terraform plan -var-file=awsprofile.tfvars
```
