module "vpc" {
  source        = "../../modules/vpc"
  vpc_cidr      = "10.0.0.0/16"
  subnet_cidr_PuA   = "10.0.1.0/24"
  subnet_cidr_PuB   = "10.0.2.0/24"
  subnet_cidr_PrA   = "10.0.11.0/24"
  subnet_cidr_PrB   = "10.0.12.0/24"
  subnet_cidr_PrC   = "10.0.21.0/24"
  subnet_cidr_PrD   = "10.0.22.0/24"
  subnet_cidr_PrE   = "10.0.31.0/24"
  subnet_cidr_PrF   = "10.0.32.0/24"
  subnet_az_PuA     = "${var.aws_region}a"          # ap-southeast-1a
  subnet_az_PuB     = "${var.aws_region}b"          # ap-southeast-1b
  subnet_az_PrA     = "${var.aws_region}a"          # ap-southeast-1a
  subnet_az_PrB     = "${var.aws_region}b"          # ap-southeast-1b
  subnet_az_PrC     = "${var.aws_region}a"          # ap-southeast-1a
  subnet_az_PrD     = "${var.aws_region}b"          # ap-southeast-1b
  subnet_az_PrE     = "${var.aws_region}a"          # ap-southeast-1a
  subnet_az_PrF     = "${var.aws_region}b"          # ap-southeast-1b
  env           = "UW2"
  PuA           = "UW2-PUBLIC-1"
  PuB           = "UW2-PUBLIC-2"
  PrA           = "UW2-PRIVATE-1"
  PrB           = "UW2-PRIVATE-2"
  PrC           = "UW2-PRIVATE-3"
  PrD           = "UW2-PRIVATE-4"
  PrE           = "UW2-PRIVATE-5"
  PrF           = "UW2-PRIVATE-6"
}

module "routing" {
  source        = "../../modules/routing"
  vpc_id = module.vpc.vpc_id
  env           = "UW2"
  subnet_id-PuA = module.vpc.subnet_id-PuA.id
  subnet_id-PuB = module.vpc.subnet_id-PuB.id
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
