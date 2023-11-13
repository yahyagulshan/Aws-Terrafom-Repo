variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "aws_profile" {
  type = string
  default = "testing" 
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  type = string
  default = "yahya-test-key-pair"
  
}

variable "cidr_blocks" {
  type = string
  default = ""
  
}



# Add other variables as needed

# Add other variables as needed