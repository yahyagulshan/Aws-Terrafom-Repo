resource "aws_instance" "main" {
  ami           = "ami-0fc5d935ebf8bc3bc"  # Replace with your desired AMI ID
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name          = var.key_name
  vpc_security_group_ids = [var.security_group]
  security_groups = [var.security_group]
  # Add other necessary configuration for your EC2 instance
}

output "ec2_instance_id" {
  value = aws_instance.main.id
}



