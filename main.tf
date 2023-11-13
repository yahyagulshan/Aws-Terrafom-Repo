
##################################
provider "aws" {
  region = "us-east-1"  # Update with your desired region
}


module "vpc" {
  source     = "./modules/vpc"
  vpc_cidr   = "10.0.0.0/16"
  # Add other necessary variables
}

module "subnet" {
  source         = "./modules/subnet"
  vpc_id         = module.vpc.vpc_id
  public_cidr    = "10.0.0.0/24"
  private_cidr   = "10.0.1.0/24"
  # Add other necessary variables
}

module "security_group" {
  source        = "./modules/security_group"
  vpc_id        = module.vpc.vpc_id
  # Add other necessary variables
}

module "ec2" {
  source           = "./modules/ec2"
  instance_type = var.instance_type
  subnet_id        = module.subnet.public_subnet_id
  security_group_ids = [module.security_group.security_group_id]
  security_group = module.security_group.security_group_id
  
  # Add other necessary variables
}
