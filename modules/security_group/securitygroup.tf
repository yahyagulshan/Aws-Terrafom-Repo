resource "aws_security_group" "main" {
  vpc_id = var.vpc_id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    # cidr_blocks      = [aws_vpc.main.cidr_block]
    cidr_blocks = ["1.1.1.1/32"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "MySG"
  }

  # Define your security group rules here
}

output "security_group_id" {
  value = aws_security_group.main.id
}






