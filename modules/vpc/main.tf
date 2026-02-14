resource "aws_vpc" "myvpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "${var.env}-VPC"
  }
}
  
resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.subnet_az

  tags = {
    Name = "${var.sub}-SUBNET"
  }
}

---
resource "aws_subnet" "public" {
  count = 2

  vpc_id            = var.vpc_id
  availability_zone = var.azs[count.index]

  # Convert /16 → /24
  cidr_block = cidrsubnet(var.vpc_cidr, 8, count.index + 1)

  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-${count.index + 1}"
  }
}
---

output "subnet_id" {
  value       = aws_subnet.main.id
  description = "The Subnet which my EC2 will be created"
}
