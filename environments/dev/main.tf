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
  env           = "dev"
  PuA           = "dev-PUBLIC-1"
  PuB           = "dev-PUBLIC-2"
  PrA           = "dev-PRIVATE-1"
  PrB           = "dev-PRIVATE-2"
  PrC           = "dev-PRIVATE-3"
  PrD           = "dev-PRIVATE-4"
  PrE           = "dev-PRIVATE-5"
  PrF           = "dev-PRIVATE-6"
}

module "routing" {
  source        = "../../modules/routing"
  vpc_id = module.vpc.vpc_id
  env           = "dev"
  subnet_id_PuA = module.vpc.subnet_id_PuA
  subnet_id_PuB = module.vpc.subnet_id_PuB
  subnet_id_PrA = module.vpc.subnet_id_PrA
  subnet_id_PrB = module.vpc.subnet_id_PrB
  subnet_id_PrC = module.vpc.subnet_id_PrC
  subnet_id_PrD = module.vpc.subnet_id_PrD
  subnet_id_PrE = module.vpc.subnet_id_PrE
  subnet_id_PrF = module.vpc.subnet_id_PrF
}

module "securitygrps" {
  source        = "../../modules/securitygrps"
  vpc_id = module.vpc.vpc_id
  env           = "dev"
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
