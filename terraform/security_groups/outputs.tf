output "public_ssh_sg_id" {
  value = aws_security_group.public_ssh.id
}

output "public_ssh_sg_arn" {
  value = aws_security_group.public_ssh.arn
}