variable "subnet_id" {
  description = "ID of the subnet where the EC2 instance should be launched"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs for the EC2 instance"
  type        = list(string)
}

variable "instance_type" {
  
}

variable "key_name" {
  type = string
  default = "test-key-pair"
}

variable "security_group" {
  description = "ID of the security group attached to the EC2 instance"
  type        = string
}

