# ######### vpc module ###############
module "vpc" {
  source     = "./modules/vpc"
  vpc_cidr   = "10.0.0.0/16"
 
}

# ############### Internet gateway module #####################
resource "aws_internet_gateway" "gw" {
  vpc_id = module.vpc.vpc_id

  tags = {
    Name = "main"
  }
}

# ######## subnet module #############
module "subnet" {
  source         = "./modules/subnet"
  vpc_id         = module.vpc.vpc_id
  public_cidr    = "16.0.0.0/24"
  private_cidr   = "16.0.1.0/24"
  
  # Add other necessary variables
}

# ####### security group modlue ######
module "security_group" {
  source        = "./modules/security_group"
  vpc_id        = module.vpc.vpc_id
  cidr_blocks    = "1.1.1.1/32"
  # Add other necessary variables
    ingress_cidr_blocks      = ["1.1.1.1/32"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 5901
      to_port     = 5901
      protocol    = "tcp"
      description = "User-service ports"
      cidr_blocks = "1.1.1.1/32"
    },
    {
      rule        = "mysql-tcp"
      cidr_blocks = "1.1.1.1/32"
    },
        {
      rule        = "ssh-tcp"
      cidr_blocks = "1.1.1.1/32"
    },
  ]
}


############ ec2 module ##########
module "ec2" {
  source           = "./modules/ec2"
  instance_type = var.instance_type
  subnet_id        = module.subnet.public_subnet_id
  security_group_ids = [module.security_group.security_group_id]
  security_group = module.security_group.security_group_id

  
  # Add other necessary variables
}


provider "aws" {
  region = local.region
}

data "aws_availability_zones" "available" {}

locals {

  name   = "test-vpc"
  region = "us-east-1"

  vpc_cidr = "16.0.0.0/16"
  azs      = slice(data.aws_availability_zones.available.names, 0, 1)


  # tags = {
  #   Example    = test.name
  #   GithubRepo = "terraform-aws-vpc"
  #   GithubOrg  = "terraform-aws-modules"
  # }
}

