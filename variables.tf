variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "ami_id" {
  default = "ami-020cba7c55df1f615"  # linux/unix for us-east-1
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "terra-ins-keypair"
}

variable "bucket_name" {
  description = "A globally unique S3 bucket name"
}
