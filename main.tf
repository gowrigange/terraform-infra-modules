provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

module "ec2" {
  source              = "./modules/ec2"
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  key_name            = var.key_name
  subnet_id           = module.vpc.public_subnet_id
  security_group_id   = module.vpc.sg_id
}

module "s3" {
  source         = "./modules/s3"
  bucket_name    = var.bucket_name
}
