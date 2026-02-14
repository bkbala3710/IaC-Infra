
module "vpc" {
  source        = "../../modules/vpc"
  vpc_cidr      = "10.0.0.0/16"
  subnet_cidr_PuA   = "10.0.1.0/24"
  subnet_cidr_PuB   = "10.0.2.0/24"
  subnet_az_PuA     = "${var.aws_region}a"          # ap-southeast-1a
  subnet_az_Pub     = "${var.aws_region}b"          # ap-southeast-1b
  env           = "UW2"
  PuA           = "PUBLIC-1"
  PuB           = "PUBLIC-2"
}

/*
module "ec2" {
  source            = "../../modules/ec2"
  ami_id            = "ami-0afc7fe9be84307e4"
  instance_type     = "t2.micro"
  subnet_id         = module.vpc.subnet_id
  ec2_count         = 2
  env               = "dev"
}
*/
