############### VPC #########################################  
resource "aws_vpc" "myvpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "${var.env}-VPC"
  }
}
############### Subnets 2 public & 6 private ################
resource "aws_subnet" "PuA" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.subnet_cidr_PuA
  availability_zone = var.subnet_az_PuA

  tags = {
    Name = "${var.PuA}-SUBNET"
  }
}

resource "aws_subnet" "PuB" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.subnet_cidr_PuB
  availability_zone = var.subnet_az_PuB

  tags = {
    Name = "${var.PuB}-SUBNET"
  }
}

resource "aws_subnet" "PrA" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.subnet_cidr_PrA
  availability_zone = var.subnet_az_PrA

  tags = {
    Name = "${var.PrA}-SUBNET"
  }
}

resource "aws_subnet" "PrB" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.subnet_cidr_PrB
  availability_zone = var.subnet_az_PrB

  tags = {
    Name = "${var.PrB}-SUBNET"
  }
}

resource "aws_subnet" "PrC" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.subnet_cidr_PrC
  availability_zone = var.subnet_az_PrC

  tags = {
    Name = "${var.PrC}-SUBNET"
  }
}

resource "aws_subnet" "PrD" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.subnet_cidr_PrD
  availability_zone = var.subnet_az_PrD

  tags = {
    Name = "${var.PrD}-SUBNET"
  }
}

resource "aws_subnet" "PrE" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.subnet_cidr_PrE
  availability_zone = var.subnet_az_PrE

  tags = {
    Name = "${var.PrE}-SUBNET"
  }
}

resource "aws_subnet" "PrF" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.subnet_cidr_PrF
  availability_zone = var.subnet_az_PrF

  tags = {
    Name = "${var.PrF}-SUBNET"
  }
}
