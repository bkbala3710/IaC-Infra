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
  availability_zone = var.subnet_az_a

  tags = {
    Name = "${var.PuA}-SUBNET"
  }
}

resource "aws_subnet" "PuB" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.subnet_cidr_PuB
  availability_zone = var.subnet_az_b

  tags = {
    Name = "${var.PuB}-SUBNET"
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
