resource "aws_vpc" "myvpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "${var.env}-VPC"
  }
}
  
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

output "subnet_id-PuA" {
  value       = aws_subnet.PuA.id
  description = "The Subnet which my EC2 will be created"
}
output "subnet_id_PuB" {
  value       = aws_subnet.PuB.id
  description = "The Subnet which my EC2 will be created"
}

output "subnet_id-PrA" {
  value       = aws_subnet.PrA.id
  description = "The Subnet which my EC2 will be created"
}
output "subnet_id_PrB" {
  value       = aws_subnet.PrB.id
  description = "The Subnet which my EC2 will be created"
}
