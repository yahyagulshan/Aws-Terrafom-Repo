resource "aws_security_group" "main" {
  vpc_id = var.vpc_id
  tags = {
    Name = "MySG"
  }

  # Define your security group rules here
}

output "security_group_id" {
  value = aws_security_group.main.id
}
