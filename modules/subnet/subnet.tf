resource "aws_subnet" "public" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_cidr
  availability_zone       = "us-east-1a"  # Update with your desired AZ
  map_public_ip_on_launch = true
    tags = {
    Name = "My-public-subnets"
  }
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

resource "aws_subnet" "private" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.private_cidr
  availability_zone       = "us-east-1b"  # Update with your desired AZ
      tags = {
    Name = "My-private-subnets"
  }
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}


###################################


