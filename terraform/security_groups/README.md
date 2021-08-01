# Security Groups module

## Public SSH in

### Inputs
Variable | Description
-------- | -----------
environment | Environment tag (for example: prod, staging, dev)
vpc_id | The ID of the VPC on which the SG will be created

### Outputs
Variable | Description
-------- | -----------
public_ssh_sg_id | ID of the resulting SG
public_ssh_sg_arn | ARN of the resulting SG

Sample usage:
```HCL
module "my_ssh_sg"  {
  source              = "git::ssh://git@github.com/eosorio/iac-samples-aws-ec2.git//terraform/security_groups?ref=tags/v20210801"
  vpc_id              = "vpc-nnnnn"
  environment         = "dev"
}

resource "aws_instance" "bastion" {
  ami                         = data.aws_ami.amazon-linux2.id
  instance_type               = "t2.micro" 
  vpc_security_group_ids      = module.my_ssh_sg.public_ssh_sg_id
  subnet_id                   = var.subnet_id["public1"]
  key_name                    = var.key_name
}
```
