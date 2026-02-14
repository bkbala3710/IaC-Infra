resource "aws_vpc" "myvpc_4" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "${var.env}-VPC"
  }
}
  
resource "aws_subnet" "PuA_4" {
  vpc_id            = aws_vpc.myvpc_4.id
  cidr_block        = var.subnet_cidr_PuA
  availability_zone = var.subnet_az_PuA

  tags = {
    Name = "${var.PuA}-SUBNET"
  }
}

resource "aws_subnet" "PuB_4" {
  vpc_id            = aws_vpc.myvpc_4.id
  cidr_block        = var.subnet_cidr_PuB
  availability_zone = var.subnet_az_PuB

  tags = {
    Name = "${var.PuB}-SUBNET"
  }
}

output "subnet_id_PuA" {
  value       = aws_subnet.PuA_4.id
  description = "The Subnet which my EC2 will be created"
}
output "subnet_id_PuB" {
  value       = aws_subnet.PuB_4.id
  description = "The Subnet which my EC2 will be created"
}
