#--- root security_groups.tf

resource "aws_security_group" "public_ssh" {
  name            = "public_ssh"
  description     = "Allow SSH from outside the VPC"
  vpc_id          = data.aws_vpc.my_vpc.id

  ingress         {
    description   = "Allow SSH connections from every place"
    from_port     = 22
    to_port       = 22
    protocol      = "tcp"
    cidr_blocks   = ["0.0.0.0/0"]
  }

  egress          {
    from_port     = 0
    to_port       = 0
    protocol      = "-1"
    cidr_blocks   = ["0.0.0.0/0"]
  }

  tags         = {
    Name          = "public_ssh"
    Environment   = var.environment
    IaCRepo       = local.repo_url
  }
}